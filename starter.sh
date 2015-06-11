#!/bin/bash

if [ ! -d ~/.ssh ]; then
  echo 'at the first, prepare ssh keys to access your github account'
  exit 1
fi

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
npm \
ag \
tree \

# GUI (via homebrew-cask)
brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install karabiner
brew cask install iterm2
brew cask install google-japanese-ime
brew cask install dropbox
brew cask install keepassx

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
go get github.com/motemen/ghq


git clone git@github.com:tanaka51/configs.git ~/src/github.com/tanaka51/configs
~/src/github.com/tanaka51/configs/link.sh

cat <<MSG

==========

should step followings:

1. start vim and type ':BundleInstall'
2. start tmux and type 'prefix-key + I'
3. set iTerm2 to load preferences from ~/iterm
4. set capslock to control on Mac
5. set command to translate ja/en on Karabiner(search with 'japan')
MSG
