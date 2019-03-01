cp ~/.bashrc ./
cp ~/.tmux.conf ./
cp ~/.vimrc ./
cp -r ~/.pandoc/templates ./
cp ~/.emacs.d/init.el
cp -r ~/.emacs.d/org-css/ ./

git add .
git commit -m "updated dotfiles"
git push origin master
