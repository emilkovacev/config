#!/bin/bash

CONFIG_DIR=~/.config/nvim
INIT_FILE=init.vim
VIMRC=vimrc

# Insert NVIM config
if [[ ! -f $CONFIG_DIR/$INIT_FILE ]]; then
    cp $INIT_FILE $CONFIG_DIR/$INIT_FILE
    echo "copied!"
elif [[ -d $CONFIG_DIR ]]; then
    echo "$CONFIG_DIR/$INIT_FILE already exists!"
else
    echo "$CONFIG_DIR does not exist"
fi


# Insert vimrc
if [[ ! -e ~/.$VIMRC ]]; then
    cp $VIMRC ~/.$VIMRC
else
    echo "~/.$VIMRC already exists!"
fi

