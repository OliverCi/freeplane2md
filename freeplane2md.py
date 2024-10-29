#!/usr/bin/env python3

"""
freeplane2md.py - Convert Freeplane mind maps into Markdown format 

License:
    Copyright (c) 2021 Oliver Ciupke, oliver.ciupke@gmail.com
    SPDX-License-Identifier: LGPL-2.1-or-later
    Licensed under the terms of GNU Lesser General Public License v2.1 or later,
    see http://www.gnu.org/licenses/

Usage:
    freeplane2md.py [options] <mindmap>

Description:

    Converts mind maps in xml format as used by Freeplane (www.freeplane.org)
    into Markdown. The output path name becomes the input path name with
    '.mm' replaced with '.md', unless explicitly given with --output. By
    default, the root node becomes the title (header 1), other nodes become
    list items with the appropriate nesting level. Converting further levels
    of subnodes to headers can be configured using the option --headerlevel
    or -l.

    Freeplane icons are translated to their corresponding Markdown
    representation or emoji shortcodes, if one exists. 

    Links to URLs and external files are converted to Markdown links. Links to
    local Markdown files are converted to [[WikiLinks]].

    Local links within the same mind map are converted to Markdown links to
    custom IDs (aka. heading IDs) generated from Freeplane's node IDs. 

    Connections between nodes are converted into links as well. 

Arguments:
    <mindmap>   Mind map file to be converted, usually with ending .mm

Options:
    -h --help                   Show this screen.
    -V --version                Show version.
    -v --verbose                Output additional information to stderr.
    -o --output=<markdownfile>  Specify Markdown-file to be written to.
                                "-o -" writes to stdout.
    -n --no-clobber             Do not overwrite target file, if it already
                                exists. (Overwritten by -f) 
    -f --force                  Force overwriting target file.         
    --no-timestamp              Omit HTML comment with timestamp, which is
                                otherwise used to prevent erroneous overwrites.  
    -l --headerlevel=<level>    Number of levels to be converted to
                                headers [default: 1] 
    -t --todo                   Treat as to-do list. Translate non header
                                nodes without icons to tasks with checkboxes
                                (- [ ]) and nodes with check mark icons to
                                done tasks (- [x]). Do not add checkboxes to
                                list items though, where already higher level
                                node was explicitly marked with a task icon.
    --todo_all                  Add checkboxes to all list items, even where
                                already a higher level node was explicitly
                                marked with (task) icon.
                                
"""

from docopt import docopt
from sys import stderr, stdout, exit
import os
import xml.etree.ElementTree as ET
# from lxml import etree as ET
import validators
import re
import datetime
import dateutil.parser

# Markdown indentation per level
indent = "  "

# File types by endings to be linked via [[Wikilinks]] 
wikilink_targets = {".md", ".markdown"}

# Translation of icons
icon_mapping_task = {'checked': '[x]', 'unchecked': '[ ]'}
# Icons with a name different from the matching emoji shortcode
icon_mapping_shortcode = {'stop-sign': ':stop_sign:', 'info': ':information_source:'
    , 'button_ok': ':heavy_check_mark:', 'button_cancel': ':heavy_multiplication_x:'
    , 'yes': ':exclamation:', 'help': ':question:'
    , 'attach': ':paperclip:', 'clanbomber': ':bomb:'
    , 'kaddressbook': ':telephone_receiver:'
    , 'full-1': ':one:', 'full-2': ':two:', 'full-3': ':three:'
    , 'full-4': ':four:', 'full-5': ':five:', 'full-6': ':six:'
    , 'full-7': ':seven:', 'full-8': ':eight:', 'full-9': ':nine:'
    , 'revision': ':repeat:'
    , 'executable': ':gear:', 'video': ':film_strip:'
    , 'idea': ':bulb:', 'stop': ':red_circle:', 'prepare': ':yellow_circle:', 'go': ':green_circle:'
    }
# Icons with a name matching the emoji shortcode
matching_icons = {'hourglass', 'calendar', 'bee', ':telephone_receiver:', ':pencil:'}
# Wrap colons ':' around for mapping
icon_mapping_matching = {key:(':'+key+':') for key in matching_icons}
# TODO: Or directly define (redundant) dictionary?
# Map task related icons to extended task syntax for Markdown
icon_mapping_todo = {'button_ok': '[x]'}
icon_mapping_extended_tasks = {'stop-sign': '[s]', 'info': '[i]'
    , 'yes': '[!]', 'help': '[?]'
    , 'revision': '[r]', 'hourglass': '[w]', 'calendar': '[t]'
    , '0%': '[0%]', '25%': '[25%]', '50%': '[50%]', '75%': '[75%]', '100%': '[100%]'
    , 'button_cancel': '[/]'
    }

# Freeplane icons explicitly denoting the node to be a task
# Used to determine, if subnodes shall have checkboxes added on --todo
# TODO: List explicitly to be easier understandable
task_icons = set(icon_mapping_task | icon_mapping_todo | icon_mapping_extended_tasks )


def main():
    args = docopt(__doc__, version='freeplane2md 0.10.1')

    if args['--verbose']:
        print(args, file=stderr)

    # --todo_all implies --todo
    if args['--todo_all']:
        todo = 'todo_all'
    elif  args['--todo']:
        todo = 'todo'
    else:
        todo = ''

    markdown_path = get_markdown_path(args)
    check_overwrite(args, markdown_path)

    convert_file(args['<mindmap>'], markdown_path,
                 headerlevel=int(args['--headerlevel']), todo=todo,
                 no_timestamp=args['--no-timestamp']) 


def get_markdown_path(args):
    """Determine output filename(s) from input filename(s)

    Output path/filename is the input path/filename with '.mm' replaced with
    '.md', unless explicitly given with --output.
    """
    # Check if output file was specified
    if args['--output']:
        return args['--output']
    else:
        # Use input filename and change extension to ".md"
        return os.path.splitext(args['<mindmap>'])[0] + '.md'


def find_timestamp_comment(markdown_path):
    """Check, if output file contains a timestamp comment generated by
    freeplane2md
    """
    with open(markdown_path, 'r') as markdown_file:
        for line in markdown_file.readlines():
            if re.match("<!-- freeplane2md:", line):
                datestring = re.search(r"(\d{4}-\d{2}-\d{2}T[\d:\.]+)\s*-->", line).group(1)
                return dateutil.parser.parse(datestring)
    return None


def check_overwrite(args, markdown_path):
    """Check for erroneous overwrites"""
    # If Markdown-file exists and is not stdout
    if os.path.isfile(markdown_path) and not args['--force']:
        if args['--no-clobber']:
            # No overwrite in any case
            print(f"Target file \"{markdown_path}\" already exists; did not "
                  "overwrite.", file=stderr)
            exit() # sys.exit(), that is
        else:
            timestamp_comment = find_timestamp_comment(markdown_path)
            if timestamp_comment:
                mtime = datetime.datetime.fromtimestamp(
                    os.path.getmtime(markdown_path) )
                if mtime - timestamp_comment > datetime.timedelta(seconds=2):
                    print(f"Target file \"{markdown_path}\" already exits and "
                          "appears to be edited after conversion. Specify a "
                          "different output path with -o or force overwrite "
                          "with -f.", file=stderr)
                    exit()


def convert_file(freeplane_path, markdown_path, headerlevel=1, todo='',
                 no_timestamp=False):
    """Convert Freeplane freeplane_path to Markdown markdown_path

    globals:
    all_connections -- set of node IDs, which are connection sources
    all_links -- set of node IDs, which are link targets
    ending -- remember ending of the last line to avoid redundant empty lines
    icon_mapping -- map Freeplane icons to emojis
    """
    global all_connections, all_links, ending, icon_mapping

    icon_mapping = icon_mapping_task | icon_mapping_extended_tasks | icon_mapping_matching | icon_mapping_shortcode
    if todo:
        icon_mapping |= icon_mapping_todo

    ending = '\n'
    tree = ET.parse(freeplane_path)
    root = tree.getroot()

    # Handle docopt limitation, if file shall default to stdout  
    with open(markdown_path, 'w', encoding='UTF-8') if markdown_path != '-' else stdout as markdown_file:

        for root_node in root.findall('node'):

            # Collect all connection destinations for later insertion of links to connection sources
            all_connections = connection_sources(root_node)

            # Collect all link targets for later insertion of custom-id
            all_links = link_targets(root_node)

            for line in process_node(root_node, 1, headerlevel, todo):
                print(line, file=markdown_file)

        # Append HTML comment so later runs can check for erroneous overwrites
        if not no_timestamp:
            print(f"<!-- freeplane2md: Converted from {freeplane_path} at "
                  f"{datetime.datetime.now().isoformat(timespec='seconds')}"
                  f" -->", file=markdown_file)


def process_node(node, level, headerlevel=1, todo=''):
    """Recursively process conversion of a single node and its subtree"""

    global ending

    icons_mm = find_icons(node)
    icons_md = map_icons(icons_mm)

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

    yield ( markers + icons_md + indent_multiline_text(map_links(node), level-headerlevel) + add_custom_ids(node)
        + map_richcontent(node) + ending )

    # If this node already contained task icon in input mind map, do
    # not convert child items to tasks
    # - unless option --todo_all was set
    if task_icons.intersection(icons_mm) and todo != 'todo_all':
        todo = ''

    for child in node.findall('node'):
        yield from process_node(child, level+1, headerlevel, todo)


def find_icons(node):
    """All icons in this node"""
    return [icon.attrib['BUILTIN'] for icon in node.findall('icon')]


def map_icons(icons_mm):
    """String with Markdown representations for list of Freeplane icons"""
    return ''.join([icon_mapping[icon_mm] + ' ' if icon_mm in icon_mapping
                    else ":" + icon_mm + ": " for icon_mm in icons_mm ])


def map_links(node):
    """Augment node text with link, if present"""

    if 'TEXT' not in node.attrib.keys():
        # TODO: Only if verbose?
        print("Node without TEXT attribute: ", node.attrib.get('ID'), file=stderr)
    link_str = node.attrib.get('LINK', "")

    # To allow clickable links, use link as text if empty
    text = node.attrib.get('TEXT') or link_str
    
    if not link_str:
        return text

    # Normal Markdown link, of no simplification applies
    if text != link_str and text != link_str.replace("mailto:", ""):
        return f'[{text}]({link_str})'

    # Simplify to automatic links for URLs or e-mail addresses
    if validators.url(link_str) or validators.email(link_str) or validators.email(link_str.replace("mailto:", "")):
        return f'<{link_str}>'

    # WikiLink, if target is Markdown file
    if os.path.splitext(link_str)[1] in wikilink_targets:
        return f'[[{os.path.splitext(link_str)[0]}]]'

    # Normal Markdown link for all other cases
    return f'[{text}]({link_str})'


def map_richcontent(node):
    """Return HTML content of node as string usable within Markdown"""
    html = ""
    if node.find('richcontent') is not None:
        html_body = node.find('richcontent').find('html').find('body')
        html = ET.tostring(html_body, method='html', encoding='unicode')
        # Remove empty or whitespace only lines inbetween
        # (strip and splitlines take care of OS line break differences)
        html = "".join([s for s in html.strip().splitlines(True) if s.strip()])
        # Remove surrounding body tags
        html = re.sub(r"^\s*<body>", "", html)
        html = re.sub(r"</body>\s*$", "", html)
        # Exactly one empty line before and after HTML block
        html = "\n\n" + html.strip() + "\n"
    return html


def add_custom_ids(node):
    """Custom IDs for connections, link targets or links within document"""
    result = ""
    # Add {#custom-id} if node is connection target
    # (Explicitly compare to None due to oddity of etree)
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

    Collect all connection sources (IDs contained in 'DESTINATION' attribute
    within the target of a connection the IDs) for later insertion of links
    """
    return {arrowlink.attrib['DESTINATION']
            for arrowlink in tree.iter('arrowlink')}


def link_targets(tree):
    """Link targets in tree

    Collect all link targets for later insertion of custom-ids
    """
    return {node.attrib.get('LINK') for node in tree.iter('node')
            if node.attrib.get('LINK')}


def indent_multiline_text(text, level):
    """Ensure correct indentation of nodes with multiline text"""
    # TODO: Apply same indentation follow to HTML rich content too
    return ('\n' + indent*level).join(text.splitlines())


if __name__ == '__main__':
    main()
