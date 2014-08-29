#!/bin/sh

export PYTHONPATH=$HOME/code/rinohtype:$HOME/code/rinohtype/citeproc-py

kernprof.py -l -b template.py

python -m line_profiler template.py.lprof > template.lprof.txt

