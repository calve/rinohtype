#!/bin/sh

THISDIR="$(dirname $0)"
ROOTDIR="$THISDIR/../.."

export PYTHONPATH=$ROOTDIR:$PYTHONPATH

time env python3 test.py

