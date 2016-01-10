#!/bin/bash

echo "Installing dotfiles"

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"

    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    echo "Updating OSX settings"
    source install/osx.sh

    echo "Installing node (from nvm)"

    source install/node.sh

    nvm install node

    source install/npm.sh

    echo "Configuring nginx"
    # create a backup of the original nginx.conf
    mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.original
    ln -s nginx/nginx.conf /usr/local/etc/nginx/nginx.conf
    # symlink the code.dev from dotfiles
    ln -s nginx/code.dev /usr/local/etc/nginx/sites-enabled/code.dev
fi


echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
