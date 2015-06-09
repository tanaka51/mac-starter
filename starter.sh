#!/bin/bash

xcode-select --install

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# CLI
brew install \
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

# GUI (via homebrew-cask)
brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install karabiner
brew cask install iterm2
brew cask install google-japanese-ime
brew cask install dropbox

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
go get github.com/motemen/ghq

# TODO i wanna get config files via the internet
