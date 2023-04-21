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
    freeplane2md.convert_file('test/test.mm', 'test/test-todo.md', todo=True, no_timestamp=True)
    with open('test/expected-todo.md') as expected, open('test/test-todo.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_freeplaneUserGuide():
    """Test embedded HTML with Freeplane user guide Mind map
    (For automatic test only first chapter is taken)
    """
    freeplane2md.convert_file('test/freeplaneUserGuide-introduction.mm', 'test/freeplaneUserGuide-introduction.md', no_timestamp=True)
    with open('test/expected-freeplaneUserGuide-introduction.md') as expected, open('test/freeplaneUserGuide-introduction.md') as testee:
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

