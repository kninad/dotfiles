#!/bin/bash

cp ~/.bashrc ./
cp ~/.vimrc ./
cp ~/.emacs.d/init.el ./
cp ~/.emacs.d/emacs-pandoc.css ./
cp ~/Desktop/emacs-notes.md ./
cp ~/Desktop/vim-notes.md ./

git add .
git commit -m "Edited dotfiles"
git push origin master
