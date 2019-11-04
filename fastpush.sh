cp ~/.bashrc ./
cp ~/.tmux.conf ./
cp ~/.vimrc ./
cp -r ~/.pandoc/templates/ pandoc-files/
cp ~/.pandoc/pandoc.css pandoc-files/
# cp ~/.emacs.d/init.el ./
# cp -r ~/.emacs.d/org-css/ ./

git add .
git commit -m "updated dotfiles"
git push origin master
