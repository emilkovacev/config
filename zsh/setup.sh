#!/bin/bash

ZSHRC=zshrc

# Insert vimrc
if [[ ! -f ~/.$ZSHRC ]]; then
    cp $ZSHRC ~/.$ZSHRC
else
    echo "~/.$ZSHRC already exists!"
fi

