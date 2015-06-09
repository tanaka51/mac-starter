#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew insatll \
git \
zsh \
vim \
tmux \
postgresql \
openssl \
libyaml \
libffi \
go \
peco \
reattach-to-user-namespace \

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
go get github.com/motemen/ghq

# TODO i wanna get config files via the internet
# TODO i wanna get GUI apps via homebrew-cask
