cp ~/.bashrc ./bashrc
# cp ~/.tmux.conf ./tmux.conf
cp ~/.vimrc ./vimrc
cp ~/.screenrc ./screenrc
cp -r /home/ninad/.pandoc/ ./pandoc/
cp ~/.config/Code/User/settings.json vscode_settings.json
# cp ~/.emacs.d/init.el ./
# cp -r ~/.emacs.d/org-css/ ./

git add .
git commit -m "updated dotfiles"
git push origin master
