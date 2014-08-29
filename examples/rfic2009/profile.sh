#!/bin/sh

export PYTHONPATH=$HOME/code/rinohtype:$HOME/code/rinohtype/citeproc-py

#kernprof.py -b template.py
python -m cProfile -o template.py.prof template.py

pyprof2calltree -o template.py.kgrind -i template.py.prof

sed -i -e's!/home/brecht/code/rinohtype/!!g' template.py.kgrind

#python -m pstats template.py.prof
