#!/usr/bin/python
# -*- coding: iso-8859-1 -*-
from distutils.core import setup
import py2exe

setup(
    options = {"py2exe": {"compressed": 1, "optimize": 0,} },
	    zipfile = None,
		    windows=[{ "script": "wfGui.py",}],
			)
