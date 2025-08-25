#!/bin/bash

# Check if bemenu-run is already running
if pgrep -x "bemenu-run" > /dev/null; then
    # If it is running, kill it
    pkill bemenu-run
else
    # If it is not running, start it
    bemenu-run -b -B 1 -i -l 7 -P ">>" -p "/" -s -f --fn [8] --binding vim --vim-esc-exits --counter always --fixed-height&
fi

