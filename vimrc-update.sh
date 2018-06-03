#!/bin/bash
# delete previous vimrc
rm ~/.vimrc-prev

# rename current vimrc to previous
mv ~/.vimrc ~/.vimrc-prev

# move new vimrc to ~/
cp .vimrc ~/
