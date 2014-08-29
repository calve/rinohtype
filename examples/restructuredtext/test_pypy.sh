#!/bin/sh

THISDIR="$(dirname $0)"
ROOTDIR="$THISDIR/../.."

export PYTHONPATH=$ROOTDIR:$PYTHONPATH:/usr/lib/python3.4/site-packages

time env pypy3 test.py

