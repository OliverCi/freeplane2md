"""Automated tests for freeplane2md

License:
    Copyright (c) 2021 Oliver Ciupke, oliver.ciupke@gmail.com
    SPDX-License-Identifier: LGPL-2.1-or-later
    Licensed under the terms of GNU Lesser General Public License v2.1 or later,
    see http://www.gnu.org/licenses/
"""

import unittest
import pytest
import freeplane2md
# import filecmp


def test_convert_file():
    """Test file containing different freeplane features"""
    freeplane2md.convert_file('test/test.mm', 'test/test.md', no_timestamp=True)
    with open('test/expected.md') as expected, open('test/test.md') as testee:
        assert(expected.readlines() == testee.readlines())
    # TODO: Check, if MD file was really created by this test, e.g. via the timestamp.

# ---

def test_main():
    """Test testing the CLI
    Test by setting command line parameters and run main instead of inner function."""
    freeplane2md.main(['test/test.mm', '--no-timestamp'])
    with open('test/expected.md') as expected, open('test/test.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_edge_cases_main():
    """Several edge-cases, such as empty nodes, overlapping links and
    connectors etc.
    """
    freeplane2md.main(['test/test-edge-cases.mm', '--headerlevel=2', '--no-timestamp'])
    with open('test/expected-edge-cases.md') as expected, open('test/test-edge-cases.md') as testee:
        assert(expected.readlines() == testee.readlines())

# ---

def test_headerlevel_2():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel2.md', headerlevel=2, no_timestamp=True)
    with open('test/expected-headerlevel2.md') as expected, open('test/test-headerlevel2.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_headerlevel_3():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel3.md', headerlevel=3, no_timestamp=True)
    with open('test/expected-headerlevel3.md') as expected, open('test/test-headerlevel3.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_headerlevel_0():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel0.md', headerlevel=0, no_timestamp=True)
    with open('test/expected-headerlevel0.md') as expected, open('test/test-headerlevel0.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_icons():
    """Icons to be tested"""
    freeplane2md.convert_file('test/test-icons.mm', 'test/test-icons.md', no_timestamp=True)
    with open('test/expected-icons.md') as expected, open('test/test-icons.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_edge_cases():
    """Several edge-cases, such as empty nodes, overlapping links and
    connectors etc.
    """
    freeplane2md.convert_file('test/test-edge-cases.mm', 'test/test-edge-cases.md', headerlevel=2, no_timestamp=True)
    with open('test/expected-edge-cases.md') as expected, open('test/test-edge-cases.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_todo_list():
    """Treat mind map as to-do list as with --todo"""
    freeplane2md.convert_file('test/test.mm', 'test/test-todo.md', todo='todo', no_timestamp=True)
    with open('test/expected-todo.md') as expected, open('test/test-todo.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_todo_misc():
    """New behavior on --todo: Do not add checkboxes to list items, if
    already higher level node was explicitly marked with (task) icon in
    input mind map"""
    freeplane2md.convert_file('test/test-todo-misc.mm', 'test/test-todo-misc.md', todo='todo', no_timestamp=True)
    with open('test/expected-todo-misc.md') as expected, open('test/test-todo-misc.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_todo_all():
    """New behavior on --todo: Do not add checkboxes to list items, if
    already higher level node was explicitly marked with (task) icon in
    input mind map"""
    freeplane2md.convert_file('test/test-todo-misc.mm', 'test/test-todo_all.md', todo='todo_all', no_timestamp=True)
    with open('test/expected-todo_all.md') as expected, open('test/test-todo_all.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_todo_all_main():
    """Classic behavior now on option --todo_all: Add checkboxes to all
    list items, even if higher level node was already marked explicitly
    with (task) icon in input mind map"""
    freeplane2md.main(['test/test-todo-misc.mm', '--todo_all', '--no-timestamp'])
    with open('test/expected-todo_all.md') as expected, open('test/test-todo_all.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_freeplaneUserGuide():
    """Test embedded HTML with Freeplane user guide mind map
    (For automatic test only first chapter is taken)
    """
    freeplane2md.convert_file('test/freeplaneUserGuide-introduction.mm', 'test/freeplaneUserGuide-introduction.md', no_timestamp=True)
    with open('test/expected-freeplaneUserGuide-introduction.md') as expected, open('test/freeplaneUserGuide-introduction.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_multiline_indentation():
    """Test that nodes with multiline text follow indentations in Markdown"""
    freeplane2md.convert_file('test/test-multiline-indentation.mm', 'test/test-multiline-indentation.md', headerlevel=2, no_timestamp=True)
    with open('test/expected-multiline-indentation.md') as expected, open('test/test-multiline-indentation.md') as testee:
        assert(expected.readlines() == testee.readlines())

# ---

def test_multiple_conversions():
    """Test multiple conversions in a row.
    Provoking errors when state accidentally carried over ."""
    # Converting with "todo" changes the context state
    freeplane2md.convert_file('test/test.mm', 'test/test-todo.md', todo='todo', no_timestamp=True)
    with open('test/expected-todo.md') as expected, open('test/test-todo.md') as testee:
        assert(expected.readlines() == testee.readlines())

    """Icons to be tested"""
    freeplane2md.convert_file('test/test-icons.mm', 'test/test-icons.md', no_timestamp=True)
    with open('test/expected-icons.md') as expected, open('test/test-icons.md') as testee:
        assert(expected.readlines() == testee.readlines())

    freeplane2md.convert_file('test/test.mm', 'test/test.md', no_timestamp=True)
    with open('test/expected.md') as expected, open('test/test.md') as testee:
        assert(expected.readlines() == testee.readlines())

# ---

def test_get_markdown_path():
    """Test determining output filename"""
    # Path written out
    assert(freeplane2md.get_markdown_path({'<mindmap>': "test/test.mm", '--output': False}) == "test/test.md" )
    # Long path expression starting from root directory with slash '/'
    assert(freeplane2md.get_markdown_path({'<mindmap>': "/A/B/C/D/E/F/G/H/I/J/test.mm", '--output': False}) == "/A/B/C/D/E/F/G/H/I/J/test.md" )
    # Output explicitely given via option
    assert(freeplane2md.get_markdown_path({'<mindmap>': "test/test.mm", '--output': "explicit_given.md"}) == "explicit_given.md" )
    # Just filename without paht expression
    assert(freeplane2md.get_markdown_path({'<mindmap>': "local.mm", '--output': False}) == "local.md" )
    # Check, if single dot '.' confuses function
    assert(freeplane2md.get_markdown_path({'<mindmap>': "./local.mm", '--output': False}) == "./local.md" )

# ---

def test_find_timestamp_comment():
    """Test if timestamp is found in file"""
    freeplane2md.convert_file('test/test.mm', 'test/test.md')
    assert(freeplane2md.find_timestamp_comment('test/test.md'))


def test_timestamp():
    """Test if timestamp is added to file"""
    freeplane2md.convert_file('test/test.mm', 'test/test.md')
    assert(freeplane2md.find_timestamp_comment('test/test.md'))


def test_check_overwrite_file():
    """Test if existing file is overwritten"""
    # Create a file to be overwritten
    with open('test/overwrite.md', 'w') as overwrite:
        overwrite.write("This file will be overwritten.")
    # Run conversion
    freeplane2md.convert_file('test/test.mm', 'test/overwrite.md', no_timestamp=True)
    with open('test/expected.md') as expected, open('test/overwrite.md') as testee:
        assert(expected.readlines() == testee.readlines())


def test_check_no_overwrite_file():
    """Test if existing file is not overwritten by evaluating the internal unit utility"""
    import time
    import os
    import pytest
    
    # Create a file to be overwritten. 
    # Use \n so the timestamp comment (appended directly after) lands on a new line and can be parsed by re.match.
    with open('test/no-overwrite.md', 'w') as no_overwrite:
        no_overwrite.write("This file will not be overwritten.\n")
        freeplane2md.add_timestamp('test/test.mm', no_overwrite)
        
    # check_overwrite only skips overwriting if the file's disk mtime is > 2 seconds older than the parsed timestamp.
    # We sleep and use os.utime to artificially increment the mtime to simulate a human edit.
    time.sleep(2.5) 
    os.utime('test/no-overwrite.md', None)
    
    # Unit test the function directly instead of going through main()
    args = {'--force': False, '--no-clobber': False}
    with pytest.raises(SystemExit):
        freeplane2md.check_overwrite(args, 'test/no-overwrite.md')
        
    with open('test/no-overwrite.md') as testee:
        assert(testee.read().startswith("This file will not be overwritten."))

def test_check_no_overwrite_when_called_as_main():
    """Test the overwrite evaluation behaves correctly when driven natively from the CLI main execution"""
    import time
    import os
    import pytest
    
    # Create a file to be overwritten, using a newline for re.match parsing
    with open('test/no-overwrite-main.md', 'w') as no_overwrite:
        no_overwrite.write("This file will not proceed.\n")
        freeplane2md.add_timestamp('test/test.mm', no_overwrite)
        
    # Sleep to trigger the check_overwrite 2-second buffer window
    time.sleep(2.5) 
    os.utime('test/no-overwrite-main.md', None)
    
    with pytest.raises(SystemExit):
        freeplane2md.main(['test/test.mm', '-o', 'test/no-overwrite-main.md'])
        
    with open('test/no-overwrite-main.md') as testee:
        assert(testee.read().startswith("This file will not proceed."))

def test_html_indentation():
    """Test that nested HTML rich content correctly respects the Markdown list indentation"""
    freeplane2md.convert_file('test/test-html-indentation.mm', 'test/test-html-indentation.md', no_timestamp=True)
    with open('test/expected-html-indentation.md') as expected, open('test/test-html-indentation.md') as testee:
        assert(expected.readlines() == testee.readlines())
