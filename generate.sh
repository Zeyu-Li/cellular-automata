#!/bin/bash
echo "Generating cellular automata gif of size $1"
value=${2:-18}
cellular -b $(python3 -c "print('0'*$1+'1'+'0'*$1, end='')") -h 600 -f 1 -r $value -o cellular.gif

# cleanup
rm -f file.txt