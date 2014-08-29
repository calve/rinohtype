#!/bin/sh

# pyte
echo 'rinohtype'
find rinoh -name '*.py' | grep -v -e 'mathtext' -e 'pyparsing' -e 'mapping\.py' | xargs wc -l
cloc --not-match-f='mathtext|pyparsing|mapping\.py' rinoh

# citeproc
echo 'citeproc'
find citeproc-py/citeproc -name '*.py' | xargs wc -l
cloc --not-match-f='mathtext|pyparsing|mapping\.py' citeproc-py/citeproc

