cp ~/.bashrc ./bashrc
cp ~/.tmux.conf ./tmux.conf
cp ~/.screenrc ./screenrc
cp -r ~/.pandoc/* ./pandoc/
cp ~/.config/Code/User/settings.json ./vscode/settings.json

git add .
git commit -m "updated dotfiles"
git push origin master
