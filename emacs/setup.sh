#!/bin/bash

CONFIG_DIR=~/.emacs.d
INIT_FILE=init.el

if [[ -d $CONFIG_DIR && ! -n $CONFIG_DIR/$INIT_FILE ]]; then
    cp $INIT_FILE $CONFIG_DIR/$INIT_FILE
    echo "copied!"
elif [[ -d $CONFIG_DIR ]]; then
    echo "$CONFIG_DIR/$INIT_FILE already exists!"
else
    echo "$CONFIG_DIR does not exist"
fi
