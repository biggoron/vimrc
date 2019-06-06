# vimrc
My vim configuration.

# Contents
My whole .vim directory, contains my own shortcuts but also plugins, filetype detection etc...
Check the vim documentation to understand how the .vim folder is organized.  The "main" file is the .vimrc file.

# Installation

## Installation in the home folder

Pay attention to the fact that this installation method will override the default vim configuration. 

```
cd ~
rm .vimrc
rm -rf .vim
git clone https://github.com/biggoron/vimrc
mv vimrc .vim
cp .vim/.vimrc .vimrc
cd .vim
sh install.sh
```

## Custom installation

This installation method can be usefull if you don't have access to the home folder or if you don't want to override the default vim behavior on your work environment.

In order to install the vim configuration, please first clone this repo:

```
cd /path/to/config/
git clone https://github.com/biggoron/vimrc
cd vimrc
sh install.sh
alias vim="vim --cmd 'let &rtp = substitute(&rtp, \"/path/to/config/vimrc\", \"/path/to/config/vimrc\", \"g\")' -u /path/to/config/vimrc/.vimrc"
```

the absolute path in the alias must be an absolute path.

## Colorscheme

The default colorscheme is solarized, a complete and esthetic one. In order to make it work, your terminal window must use the solarized colorscheme for its display (you can set it in your terminal parameters)

# Usage

## General settings

## Git integration

## Commentaries

## Easy Motions

## Snippets

## Python Integration

## Fuzzy Path Matching

## File Navigator

## Tabs and Buffers Navigation

## Linters and fixers

## Pairs Automatch

## Tabulation

## Wrapping and indenting


# License
No license whatsoever, feel free to use whatever you want however you want
