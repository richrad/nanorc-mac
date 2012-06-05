#!/bin/bash

c=(black red green yellow blue magenta cyan white)

echo 'syntax "dircolors" "dircolors$"'

for f in $(seq 0 7); do
    echo "color ${c[$f]} \"(00;)?3$f\""
    echo "color bright${c[$f]} \"01;3$f\""
    for b in $(seq 0 7); do
        echo "color ${c[$f]},${c[$b]} \"3$f;4$b\" \"4$b;3$f\""
    done
done

echo 'color green "^[[:space:]]*TERM.*$"'
echo 'color cyan "#.*$"'


# TODO: Use code above plus this for highlighting shell ansi escape sequences
# color red,black "\\(033|e|E)\[31;40m"
