cp ~/.bashrc ./
cp ~/.tmux.conf ./
 p ~/.vimrc ./
cp -r ~/.pandoc/templates ./

git add .
git commit -m "updated dotfiles"
git push origin master
