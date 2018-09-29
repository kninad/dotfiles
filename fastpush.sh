cp ~/.bashrc ./
cp ~/.tmux.conf ./
cp ~/.vimrc ./

git add .
git commit -m "updated dotfiles"
git push origin master
