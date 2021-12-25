"""Automated tests for freeplane2md"""

import pytest
import freeplane2md
import filecmp


def test_convert_file():
    """Test file containing different freeplane features"""
    freeplane2md.convert_file('test/test.mm', 'test/test.md')
    with open('test/expected.md') as expected, open('test/test.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_headerlevel_2():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel2.md', headerlevel=2)
    with open('test/expected-headerlevel2.md') as expected, open('test/test-headerlevel2.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_headerlevel_3():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel3.md', headerlevel=3)
    with open('test/expected-headerlevel3.md') as expected, open('test/test-headerlevel3.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_headerlevel_0():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel0.md', headerlevel=0)
    with open('test/expected-headerlevel0.md') as expected, open('test/test-headerlevel0.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_icons():
    """Icons to be tested"""
    freeplane2md.convert_file('test/test-icons.mm', 'test/test-icons.md')
    with open('test/expected-icons.md') as expected, open('test/test-icons.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_edge_cases():
    """Several edge-cases, such as empty nodes, overlapping links and
    connectors etc.
    """
    freeplane2md.convert_file('test/test-edge-cases.mm', 'test/test-edge-cases.md', headerlevel=2)
    with open('test/expected-edge-cases.md') as expected, open('test/test-edge-cases.md') as testee:
        assert(expected.readlines() == testee.readlines())

def test_todo_list():
    """Treat mindmap as to-do list as with --todo"""
    freeplane2md.convert_file('test/test.mm', 'test/test-todo.md', todo=True)
    with open('test/expected-todo.md') as expected, open('test/test-todo.md') as testee:
        assert(expected.readlines() == testee.readlines())

