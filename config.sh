#!/bin/bash

SETUP=setup.sh

for dir in */; do
    if [[ -e $dir/$SETUP ]]; then
        cd $dir
        chmod +x setup.sh
        ./setup.sh
        cd ..
        echo "Completed setup for $dir"
    else
        echo "$dir missing $SETUP"
    fi
    echo "-----------"
done
