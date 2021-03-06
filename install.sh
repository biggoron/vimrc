mkdir bundle autoload
# Pathogen
curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
# ALE (linter)
git clone https://github.com/w0rp/ale.git bundle/ale
# Auto pair
git clone https://github.com/jiangmiao/auto-pairs.git bundle/auto-pairs
# CtrlP
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
# Commenter
git clone https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
# Tree
git clone https://github.com/scrooloose/nerdtree.git bundle/nerdtree
# Tabular
git clone https://github.com/godlygeek/tabular.git bundle/tabular
# Airline
git clone https://github.com/vim-airline/vim-airline bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes bundle/vim-airline-themes
# Fugitive
git clone https://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git clone https://github.com/airblade/vim-gitgutter.git bundle/vim-gitgutter
# Snippets
git clone https://github.com/garbas/vim-snipmate.git bundle/vim-snipmate
git clone https://github.com/honza/vim-snippets.git bundle/vim-snippets
git clone https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
# Colorscheme
git clone https://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
# Easymotion
git clone https://github.com/easymotion/vim-easymotion bundle/vim-easymotion
# vim surround
git clone https://github.com/tpope/vim-surround.git bundle/vim-surround
# vim repeat
git clone https://github.com/tpope/vim-repeat.git bundle/vim-repeat
# Rust
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
# python autocomplete
git clone --recursive https://github.com/davidhalter/jedi-vim.git bundle/jedi-vim
echo "alias vim='vim -u "$(pwd)"/.vimrc'" >>~/.bashrc
echo "alias vim='vim -u "$(pwd)"/.vimrc'" >>~/.zshrc
