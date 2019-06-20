# VIMRC
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

The alias can be stored in a `setup_vim.sh` script called with `source setup_vim.sh` or in your `.bashrc` or `.zshrc` script.


## Colorscheme

The default colorscheme is solarized, a complete and esthetic one. In order to make it work, your terminal window must use the solarized colorscheme for its display (you can set it in your terminal parameters)

## Powerfont

The git plugin display the current git branch and status inside vim requires the installation of a powerfont (just like the zsh git plugin). You can follow [this tutorial](https://dwijaybane.wordpress.com/2017/12/04/oh-my-zsh-and-powerline-fonts-setup-for-awesome-terminal-in-ubuntu-16-04/) to set it up (you can skip the zsh part and only install the powerfont).

# Basic setting

To set up basic settings, open your `.vimrc` file and fill in the parameters at the top of the file. Your `leader` key will be referenced to as `<leader>` in the rest of the file. 

`$VIMDIR` should point to the directory associated with this repo.

`$VIMCONF` should point to your .vimrc file


# Usage

This doc is a work in progress. For now you can refer to `.vimrc` for general shortcuts and functionalities, and `ftplugin/python/pythonrc.vim` for python ones. The installed plugin documentations can also bring some help. Please find below a list of the plugins currently in use:

- **pathogen** (to install plugins)
- **ALE** (asynchronous script execution, for linting and autofixing)
- **auto-pairs** (to autocomplete matching parens etc...)
- **ctrlp** (to use fuzzy match to open files with ctrl-p)
- **nerdcommenter** (defines shortcuts to comment lines and blocks)
- **nerdtree** (folder tree navigator. Mapped to F1. press F1, then press ? (question mark key) for help)
- **tabular** (to align columns or tabular data)
- **vim-airline** (pretty status bar, with git info, lint errors nb etc...)
- **vim-fugitive** (git integration plugin)
- **vim-gitgutter** (left side gutter for vim change info, also shows lint errors and warning)
- **vim-snipmate** (code snippets and snippet engine)
- **vim-colors-solarized** (colorscheme)
- **vim-easymotion** (amazing motion tool to navigation files in vim)
- **vim-surround** (shortcut to surround words or chunks of text with parens, quotes etc...)
- **vim-repeat** (enable the repetition of vim-surround or nerdcommenter commands with the . (dot) key)
- **jedi-vim** (autocompletion and python code parsing)

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

