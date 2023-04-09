#!/bin/bash

ZSHRC=zshrc

# Insert vimrc
if [[ ! -e ~/.$ZSHRC ]]; then
    cp $ZSHRC ~/.$ZSHRC
else
    echo "~/.$ZSHRC already exists!"
fi

