#!/usr/bin/env python3

"""
freeplane2md.py - Convert Freeplane mindmaps into Markdown format 

License:
    Copyright (c) 2021 Oliver Ciupke, oliver.ciupke@gmail.com
    Licensed under the terms of GPLv3, see http://www.gnu.org/licenses/

Usage:
    freeplane2md.py [options] <mindmap> <markdownfile>

Description:
    Converts mindmaps in xml format as used by Freeplane (www.freeplane.org)
    into Markdown. By default, the root node becomes the title (header 1),
    other nodes become list items with the appropriate nesting level.
    Converting further levels of subnotes to headers can be configured using
    the option --headerlevel or -l.

    Freeplane icons are translated to their correspoding Markdown
    representation or emoji shortcodes, if one exists. 

    Links to URLs and external files are converted to Markdown links. Links to
    local Markdown files are converted to [[WikiLinks]].

    Local links within the same Mindmap are converted to Markdown links to
    custom IDs (aka. heading IDs) generated from Freeplane's node IDs. 

    Connections between nodes are converted into links as well. 

Arguments:
    <mindmap>   Mindmap file to be converted, usually with ending .mm
    <markdownfile>  Markdownfile to be written. Use "-" for stdout.

Options:
    -h --help                   Show this screen.
    -V --version                Show version.
    -v --verbose                Output additional information to stderr.
    -l --headerlevel=<level>    Number of levels to be converted to
                                headers [default: 1] 
    -t --todo                   Treat as to-do list. Translate non header
                                nodes without icons to tasks with checkboxes
                                (- [ ]) and nodes with checkmark icons to
                                done tasks (- [x]).

"""

from docopt import docopt
from sys import stderr, stdout
import os
import xml.etree.ElementTree as ET
# from lxml import etree as ET
import validators
import re

# Markdown indentation per level
indent = "  "

# File types by endings to be linked via [[Wikilinks]] 
wikilink_targets = {".md", ".markdown"}

# Translation of icons
icon_mapping = {}
icon_mapping_task = {'checked': '[x]', 'unchecked': '[ ]'}
# Icons with a name different from the matching emoji shortcode
icon_mapping_shortcode = {'stop-sign': ':stop_sign:', 'info': ':information_source:'
    , 'button_ok': ':heavy_check_mark:', 'button_cancel': ':heavy_multiplication_x:'
    , 'yes': ':exclamation:', 'help': ':question:'
    , 'attach': ':paperclip:', 'clanbomber': ':bomb:'
    , 'full-1': ':one:', 'full-2': ':two:', 'full-3': ':three:'
    , 'full-4': ':four:', 'full-5': ':five:', 'full-6': ':six:'
    , 'full-7': ':seven:', 'full-8': ':eight:', 'full-9': ':nine:'
    , 'revision': ':repeat:'
    }
# Icons with a name matching the emoji shortcode
matching_icons = {'hourglass', 'calendar'}
# Wrap colons ':' around for mapping
icon_mapping_matching = {key:(':'+key+':') for key in matching_icons}
# TODO: Or directly define (redundand) dictionary?
# Map task related icons to extended task syntax for Markdown
icon_mapping_todo = {'button_ok': '[x]'}
icon_mapping_extended_tasks = {'stop-sign': '[s]', 'info': '[i]'
    , 'yes': '[!]', 'help': '[?]'
    , 'revision': '[r]', 'hourglass': '[w]', 'calendar': '[t]'
    , '0%': '[0%]', '25%': '[25%]', '50%': '[50%]', '75%': '[75%]', '100%': '[100%]'
    , 'button_cancel': '[/]'
    }

# TODO: Combine mappings according to options
icon_mapping.update(icon_mapping_task)
icon_mapping.update(icon_mapping_extended_tasks)
icon_mapping.update(icon_mapping_matching)
icon_mapping.update(icon_mapping_shortcode)
# TODO: Remaining icons


def main():
    args = docopt(__doc__, version='freeplane2md 0.7')
    if args['--verbose']:
        print(args, file=stderr)
    convert_file(args['<mindmap>'], args['<markdownfile>'], headerlevel=int(args['--headerlevel']), todo=args['--todo'])


def convert_file(freeplane_path, markdown_path, headerlevel=1, todo=False):
    """Convert Freeplane freeplane_path to Markdown markdown_path

    globals:
    all_connections -- set of node IDs, which are connection sources
    all_links -- set of node IDs, which are link targets
    ending -- remember ending of the last line to avoid redundand empty lines
    """
    global all_connections, all_links, ending

    if todo:
        icon_mapping.update(icon_mapping_todo)

    ending = '\n'
    tree = ET.parse(freeplane_path)
    root = tree.getroot()

    # Handle docopt limitation, if file shall default to stdout  
    with open(markdown_path, 'w') if markdown_path != '-' else stdout as markdown_file:

        for root_node in root.findall('node'):

            # Collect all connection destinations for later insertion of links to connection sources
            all_connections = connection_sources(root_node)

            # Collect all link targets for later insertion of custom-id
            all_links = link_targets(root_node)

            for line in process_node(root_node, 1, headerlevel, todo):
                print(line, file=markdown_file)


def process_node(node, level, headerlevel=1, todo=False):
    """Recursively process conversion of a single node and its subtree"""

    global ending

    icons_md = map_icons(node)

    # Make configurable up to which level convert to header and from which to list item 
    if level <= headerlevel:
        # Markdown header corresponding to nesting level
        markers = '#'*level + ' '
        # Newline before and after header, but only one between two headers 
        if ending != '\n':
            markers = '\n' + markers
        ending = '\n'
    else:
        # Print text as list item with the correct indentation level
        # Add checkbox on nodes without icons, if option is set
        bullet = ("- " if icons_md or not todo else "- [ ] ")
        markers = indent*(level-headerlevel-1) + bullet 
        ending = ''

    yield ( markers + icons_md + map_links(node) + add_custom_ids(node)
        + map_richcontent(node) + ending )

    for child in node.findall('node'):
        yield from process_node(child, level+1, headerlevel, todo)


def map_icons(node):
    """Markdown representation for icons in node"""
    # String of one or more icons per node
    icons_md = ""
    for icon in node.findall('icon'):
        icon_mm = icon.attrib['BUILTIN']
        # Translate icons with configured dictionary
        if icon_mm in icon_mapping:
            icons_md += icon_mapping[icon_mm] + ' '
        else:
            # Default to use icon name as emoji shortcode
            icons_md += ":" + icon_mm + ": "
    return icons_md


def map_links(node):
    """Augment node text with link, if present"""
    text = node.attrib.get('TEXT')
    link_str = node.attrib.get('LINK', "")
    # TODO: Distinguish none or empty text?
    if text is None:
        print("Node without TEXT attribute: ", node.attrib.get('ID'), file=stderr)
    if not text:
        # Use link as text to allow for clickable links
        if link_str:
            text = link_str
        else:
            text = ""
    if link_str:
        # Simplify to automatic links for URLs or e-mail addresses and Wiki-links for Markdown files
        if text == link_str or text == link_str.replace("mailto:", ""):
            # TODO: Validate for mailto: prefix and simpllify
            if validators.url(link_str) or validators.email(link_str) or validators.email(link_str.replace("mailto:", "")):
                # Automatic link
                text = '<' + link_str + '>'
            elif os.path.splitext(link_str)[1] in wikilink_targets:
                # WikiLink, if target is Markdown file
                text = '[[' + os.path.splitext(link_str)[0] + ']]'
            else:
                # Normal Markdown link
                text = '[' + text + '](' + link_str + ')'
        else:
            # TODO: Turn around to simplify?
            # Normal Markdown link
            text = '[' + text + '](' + link_str + ')'
    return text


def map_richcontent(node):
    """Return HTML content of node as string usable within Markdown"""
    html = ""
    if node.find('richcontent'):
        html_body = node.find('richcontent').find('html').find('body')
        html = ET.tostring(html_body, method='html', encoding='unicode')
        # Remove empty or whitespace only lines inbetween
        # (strip and splitlines take care of OS line break differences)
        html = "".join([s for s in html.strip().splitlines(True) if s.strip()])
        # Remove surrounding body tags
        html = re.sub("^\s*<body>", "", html)
        html = re.sub("</body>\s*$", "", html)
        # Exactly one empty line before and after HTML block
        html = "\n\n" + html.strip() + "\n"
    return html


def add_custom_ids(node):
    """Custom IDs for connections, link targets or links within document"""
    result = ""
    # Add {#custom-id} if node is connection target
    # (Explicitely compare to None due to oddity of etree)
    if node.find('arrowlink') is not None:
        destination_str = node.find('arrowlink').attrib.get('DESTINATION')
        # Append {#custom-id} 
        # Remove 'ID_' to avoid collisions with links
        result += ' {' + destination_str.replace('ID_', '#', 1) + '}'

    # Add {#custom-id} if node ID is among link targets
    node_id = node.attrib['ID']
    if '#' + node_id in all_links:
        result += ' {' + '#' + node_id + '}'

    # Use only ID as source for connections in order to avoid collisions, in
    # case the line contains a link at the same time
    if node_id in all_connections:
        # Append link to {#custom-id}
        custom_id = node_id.replace('ID_', '#', 1)
        result += ' [' + custom_id + '](' + custom_id + ')'
    return result


def connection_sources(tree):
    """Connection sources within the tree

    Collect all connection sources (IDs contained in 'DESTINATION' atribute
    within the target of a connection the IDs) for later insertion of links
    """
    result = set()
    for arrowlink in tree.iter('arrowlink'):
        result.add(arrowlink.attrib['DESTINATION'])
    return result


def link_targets(tree):
    """Link targets in tree

    Collect all link targets for later insertion of custom-ids
    """
    result = set()
    for node in tree.iter('node'):
        if node.attrib.get('LINK'):
            result.add(node.attrib.get('LINK'))
    return result


if __name__ == '__main__':
    main()
