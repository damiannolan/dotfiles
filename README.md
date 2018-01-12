# Dotfiles

Welcome to my world.

## Contents

+ zsh configuration
+ vim configuration
+ tmux configuration
+ git configuration
+ osx configuration
+ Node.js setup (nvm)
+ Homebrew files (Brewfile.sh)

## Install

1. `git clone git@github.com:patnolanireland/dotfiles.git ~/.dotfiles`
2. `cd ~/.dotfiles`
3. `./install.sh`

In order to get mouse support in tumx 

1. Download [mouseterm](https://bitheap.org/mouseterm/) 
2. Brew Cash has already installed easysimbl, spotlight find and run it.  It creates the directories for the next step
3. Execute

        cd /Volumes/MouseTerm && cp -r MouseTerm.bundle ~/Library/Application\ Support/SIMBL/Plugins
4. `.tumx.conf` has the relevant settings for mouse so it's now good to go

### A note on solarized dark theme

The dark theme looks a bit weird until the contrast is turned up slightly in iTerm.  Also if using the agnoster theme or
another which requires a patched powerline font, clone the repo and install the patched fonts.

## ZSH Plugins

By default, the `.zshrc` file will source any file within `.dotfiles/zsh` that have the `.zsh` extension.

