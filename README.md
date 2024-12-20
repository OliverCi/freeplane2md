# freeplane2md

freeplane2md converts Freeplane mind maps into Markdown.

[Freeplane](https://www.freeplane.org) is a widely used mind mapping application used for note-taking, brainstorming, planning and similar tasks. Its file format (usual ending `.mm`) is a dialect of the [Freemind](http://freemind.sourceforge.net) XML format. Often however, you may want to continue using your mind map as a Markdown document, e.g. to

- use the content in tools accepting Markdown (e.g. GitHub, issue trackers, Wikis, etc.),
- edit it on mobile devices,
- make it easier accessible to people not working with Freeplane,
- integrate the content into your second brain or Zettelkasten, e.g. with [Obsidian](https://obsidian.md), [Foam](https://foambubble.github.io/foam/), [Dendron](
https://www.dendron.so/) or similar,
- publish the result as a text document.

Furthermore, Freeplane can this way be used as a more visual tool to create Markdown in the first place, e.g. when brainstorming with many people.

There are already several scripts and plugins that export or convert to Markdown. However, these are very limited so far, as they mainly export all nodes as headers and also do not handle many Freeplane features, such as links and icons (e.g. <https://github.com/memoryblade/mm2md/blob/master/mm2md.py>, <https://github.com/gelso/freeplane2markdown>)

## Features

- Convert Freeplane mind maps into Markdown format.
- Freeplane nodes are converted to Markdown headers down to a configurable level and to list items below that level.
- Frequently used icons are converted to emojis using shortcode syntax as understood by most Markdown tools.
- Freeplane links are converted to Markdown links.
  - Links to URLs or email addresses are converted to automatic links.
  - For local links within the document, custom IDs are generated from the Freeplane node IDs.
  - Links to local Markdown files are converted to `[[WikiLinks]]` as understood by many tools.
- Freeplane connections between nodes are converted to document local links.
- Checkbox icons are converted to Markdown extended syntax checkboxes (`- [ ]`, `- [x]`).
- Basic support for HTML embedded in nodes. (May disarray nesting of related nodes translated into consecutive paragraphs).
- Command line interface
- Scriptable function which can be used by other programs
- When called as a program via CLI, it tries to detect accidental overwrites of targets, which have been edited after conversion. Can be overwritten with -f.

## Example

The following mind map ([example.mm](example.mm)) shows some of the features:

![Example Mind Map](example.svg)

 `freeplane2md.py -l2 example.mm` converts it to the following markdown file ([example.md](example.md)):

    # freeplane2md
    
    ## Example showing some features
    
    ## Level 1 Node
    
    - Subnote 1
      - Subsubnote
        - Subsubsubnote
    - Subnote 2
    
    ## Tasks
    
    - [ ] Task with checkbox
    - [x] Done task
    - Priorities
      - :one: Priority 1
      - :two: Priority 2
      - :three: Priority 3
    
    ## Icons
    
    - :heavy_check_mark: Checked
    - :heavy_multiplication_x: Crossed
    - :hourglass: Waiting
    - :stop_sign: On hold
    - :repeat: Recurring / Review
    - [ ] :two: Multiple icons
    
    ## Links and connections
    
    - Link to URL
      - <https://www.freeplane.org/wiki/index.php/Home>
    - Link to e-mail
      - <mailto:example@example.com>
    - Link to local Markdown file
      - [[test-icons]]
    - Connection to node [#470163758](#470163758)
    - Target for connection {#470163758}
    - [Local hyperlink](#ID_244066349)
    - Target for hyperlink {#ID_244066349}
    <!-- freeplane2md: Converted from example.mm at 2024-11-30T19:57:34+01:00 -->

## Usage

freeplane2md is a Python script that can be called in the usual ways. Depending on your Python installation and operating system, e.g.:

    freeplane2md.py [options] <mindmap>
    python freeplane2md.py [options] <mindmap>
    py freeplane2md.py [options] <mindmap>

### Arguments

- `<mindmap>`   Mind map file to be converted, usually with ending `.mm`. The output path name becomes the input path name with
    `.mm` replaced with `.md`, unless explicitly given with `--output`.

### Options

    -h --help                   Show help.
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


See also `freeplane2md.py -h`

## Usage as library

freeplane2md can also be used from other scripts by importing it as a Python module and calling `convert_file()`, e.g.:

    import freeplane2md
    freeplane2md.convert_file('example.mm', 'example.md')

## Installation

freeplane2md requires Python 3.9 or higher, and the following packages need to be installed:

- [docopt](https://pypi.org/project/docopt/)
- [validators](https://pypi.org/project/validators/)
- [python-dateutil](https://pypi.org/project/python-dateutil/)
- [pytest](https://pypi.org/project/pytest/) (if you want to run the automated tests)

The above packages can be installed individually with pip or all at once with:

    pip install -r requirements.txt

## Planned improvements

- Better HTML handling, when interfering with indentation and nesting of consecutive paragraphs.
- Support further Freeplane features, such as embedded Markdown, $\LaTeX$ or notes.
- Test and fix some edge cases, e.g. with empty nodes or connections and links overlapping within the same node.
- Easier installation.
