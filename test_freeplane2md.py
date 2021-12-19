"""Automated tests for freeplane2md"""

import pytest
import freeplane2md
import filecmp


def test_convert_file():
    """Test file containing different freeplane features"""
    freeplane2md.convert_file('test/test.mm', 'test/test.md')
    assert(filecmp.cmp('test/expected.md', 'test/test.md'))

def test_headerlevel_2():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel2.md', headerlevel=2)
    assert(filecmp.cmp('test/expected-headerlevel2.md', 'test/test-headerlevel2.md'))

def test_headerlevel_3():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel3.md', headerlevel=3)
    assert(filecmp.cmp('test/expected-headerlevel3.md', 'test/test-headerlevel3.md'))

def test_headerlevel_0():
    """Testing option for different headerlevel"""
    freeplane2md.convert_file('test/test.mm', 'test/test-headerlevel0.md', headerlevel=0)
    assert(filecmp.cmp('test/expected-headerlevel0.md', 'test/test-headerlevel0.md'))

def test_icons():
    """Icons to be tested"""
    freeplane2md.convert_file('test/test-icons.mm', 'test/test-icons.md')
    assert(filecmp.cmp('test/expected-icons.md', 'test/test-icons.md'))

def test_edge_cases():
    """Several edge-cases, such as empty nodes, overlapping links and
    connectors etc.
    """
    freeplane2md.convert_file('test/test-edge-cases.mm', 'test/test-edge-cases.md', headerlevel=2)
    assert(filecmp.cmp('test/expected-edge-cases.md', 'test/test-edge-cases.md'))

