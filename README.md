# freeplane2md

freeplane2md converts mindmaps in Freeplane format into Markdown.

[Freeplane](https://www.freeplane.org) is a widely used mindmapping application used for notetaking, brainstorming, planning and similar tasks. Its file format (usual ending `.mm`) is a dialect of the [Freemind](http://freemind.sourceforge.net) XML format. Often though, one might want to continue to use your mindmap as Markdown document, e.g. to

- use the content in tools accepting Markdown (e.g. GitHub, issue tracker, Wikis, etc.),
- edit it on mobile devices,
- make it easier accessible to people not working with Freeplane,
- integrate the content into your second brain or Zettelkasten, e.g. with [Obsidian](https://obsidian.md), [Dendron](
https://www.dendron.so/), [Foam](https://foambubble.github.io/foam/) or similar,
- publish the result as a text document.

Furthermore, Freeplane can this way be used as a more visual tool to create Markdown in the first place, e.g. when brainstorming with many people.

There are already different scripts and plugins exporting or converting towards Markdown. Though, these are so far limited, as they mainly export all nodes as headers and also do not handle many Freeplane features, such as links and icons (e.g. <https://github.com/memoryblade/mm2md/blob/master/mm2md.py>, <https://github.com/gelso/freeplane2markdown>)

## Features

- Provides a command line interface and a scriptable function to convert Freeplane files into to Markdown.
- Freeplane nodes are converted to Markdown headers down to a configurable level and to list items below that level.
- Frequently used icons are converted to emojis (currently in shortcode syntax), as understood by most Markdown tools.
- Freeplane links are converted to Markdown links.
  - Links to URLs or E-Mail addresses are converted to automatic links.
  - For local links within the document, custom IDs are generated from the Freeplane node IDs.
  - Links to local Markdown files are converted to `[[WikiLinks]]` as understood by many tools.
- Freeplane connections between nodes are converted to document local links
- Checkbox icons are converted to Markdown extended syntax checkboxes (`- [ ]`, `- [x]`).

## Usage

`freeplane2md.py [options] <mindmap> <markdownfile>`

or depending on your python installation

`python freeplane2md.py [options] <mindmap> <markdownfile>`

### Arguments

- `<mindmap>`   Mindmap file to be converted, usually with ending .mm
- `<markdownfile>`  Markdownfile to be written. Use "-" for stdout.

### Options

    -h --help                   Show help.
    -V --version                Show version.
    -v --verbose                Output additional information to stderr.
    -l --headerlevel=<level>    Number of levels to be converted to
                                headers [default: 1] 
    -t --todo                   Treat as to-do list. Translate non header
                                nodes without icons to tasks with checkboxes
                                (- [ ]) and nodes with checkmark icons to
                                done tasks (- [x]).

See also `freeplane2md.py -h`

## Examples

Several examples can be found in the folder [test/](test/). E.g. the mindmap [test.mm](test/test.mm) shows most supported features and is converted to [test.md](test/test.md), if no options are set.

## Installation

The script requires Python 3 and the following packages need to be installed (e.g using pip):

- [docopt](https://pypi.org/project/docopt/)
- [validators](https://pypi.org/project/validators/)

Running the automated tests requires
[pytest](https://pypi.org/project/pytest/).

## Usage as library

freeplane2md can as well be used from other scripts by importing as a module and calling the function `convert_file`.

## Planned improvements

- Test and fix some edge cases, e.g. with empty nodes or connections and links overlapping in the same node.
- Option to convert icons to UTF-8 representation of emojis or other characters.
- Provide more examples and automated tests.
- Support further Freeplane features, such as Notes, embedded HTML or $\LaTeX$.
- Better help for installation 