#!/usr/bin/env bash

# brew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask 1password-cli \
    finicky \
    font-ubuntu-nerd-font

# required packages installation
brew install \
    git \
    pure \
    zsh-completions \
    tree \
    pyenv \
    allure \
    node \
    yarn

# create symlink to .zshrc
ln -sf "$(pwd)"/.zshrc ~/.zshrc
ln -sf "$(pwd)"/.vimrc ~/.vimrc

