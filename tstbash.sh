#!/bin/bash

cp ~/.bashrc ./
cp ~/.vimrc ./
cp ~/.emacs.d/init.el ./
cp ~/.emacs.d/myextras/* ./
cp ~/Desktop/notes-emacs.md ./
cp ~/Desktop/notes-vim.md ./

git add .
git commit -m "Edited dotfiles"
git push origin master
