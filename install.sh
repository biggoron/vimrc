mkdir bundle autoload
curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/w0rp/ale.git bundle/ale
git clone https://github.com/jiangmiao/auto-pairs.git bundle/auto-pairs
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
git clone https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
git clone https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git clone https://github.com/godlygeek/tabular.git bundle/tabular
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes bundle/vim-airline-themes
git clone https://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git clone https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
git clone https://github.com/garbas/vim-snipmate.git bundle/vim-snipmate
git clone https://github.com/honza/vim-snippets.git bundle/vim-snippets
git clone https://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
cp .vimrc ..
mv ../vimrc ../.vim
