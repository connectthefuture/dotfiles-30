#/usr/bin/env zsh

hostname=$(hostname)

mkdir ~/.dotfiles/zsh
ln -s ~/dotfiles/${hostname}/profile ~/.dotfiles/profile
ln -s ~/dotfiles/common/tmux ~/.dotfiles/tmux
ln -s ~/dotfiles/common/vim ~/.dotfiles/vim

echo "export DOTFILE_DIR=~/dotfiles/${hostname}

. \${DOTFILE_DIR}/zsh/zshrc" > ~/.dotfiles/zsh/zshrc

ln -s .dotfiles/profile/profile ~/.profile
ln -s .dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s .dotfiles/vim/vimrc ~/.vimrc
ln -s .dotfiles/zsh/zshrc ~/.zshrc

mkdir ~/.hist

pushd ~/dotfiles/common/vim
git clone https://github.com/Shougo/neobundle.vim.git bundle/neobundle.vim
popd