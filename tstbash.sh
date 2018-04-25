#!/bin/bash

cp ~/.bashrc ./
cp ~/.vimrc ./
cp ~/.emacs.d/init.el ./

git add .
git commit -m "Edited dotfiles"
git push origin master
