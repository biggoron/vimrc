:set nocompatible
:set encoding=utf-8

" makes ! behave the same than console (aliases, etc...)
:set shellcmdflag=-ic

"Pathogen, for plugins
execute pathogen#infect()

"colorscheme
syntax enable
set t_Co=16
colorscheme solarized
set background=dark

" Leaders
"definition of leader key
:let mapleader = "-"

"definition of local leader key
:let maplocalleader = "=" 

" NERDTree
" TODO: install Nerdtree
:nnoremap <leader>tree :NERDTreeToggle<cr>

"Configuration file
:syntax on

"quick edit .vimrc in a split of the screen
:nnoremap <leader>editvimrc :vsplit ~/.vimrc<cr> 

"quick edit vim ideas:
:nnoremap <leader>editideas :vsplit ~/.vim/ideas.vim<cr>

"quick source main config file .vimrc
:nnoremap <leader>sourcevimrc :source $MYVIMRC<cr>

"search fr placeholder
:nnoremap <leader>p /@@@<cr>
:nnoremap <leader>P ?@@@<cr>

"left side numbers
:set number
:nnoremap <leader>rnu :set rnu!<cr>
:nnoremap <leader>nu :set nu!<cr>

"uppercase
:nnoremap <leader>u viwUe
"en mode insertion
:inoremap <c-u> <esc>viwUea

"default indenting and tabbing
"indent is a multiple of shiftwidth
:setlocal shiftround
:setlocal shiftwidth=2
"indent by default each line like the one before
:setlocal autoindent
"a tab shifts the remaining text on the right to
"a multiple of shiftwidth
:setlocal smarttab
"tabs are blanks
:setlocal expandtab
"nb of spaces corresponding to a tab
:setlocal tabstop=2

"Load conf for python files
:let $PYTHONRC = $HOME."/.vim/ftplugin/python/pythonrc.vim"
:nnoremap <leader>editpythonrc :vsplit $PYTHONRC<cr>
:nnoremap <leader>sourcepythonrc :source $PYTHONRC<cr>
:augroup Python
:autocmd!
  :autocmd Filetype python :source $PYTHONRC
:augroup END

"Load conf for ruby files
:let $RUBYRC = $HOME."/.vim/ftplugin/ruby/rubyrc.vim"
:nnoremap <leader>editrubyrc :vsplit $RUBYRC<cr>
:nnoremap <leader>sourcerubyrc :source $RUBYRC<cr>
:augroup Ruby
:autocmd!
  :autocmd Filetype ruby :source $RUBYRC
:augroup END

"Load conf for eruby files
:let $ERUBYRC = $HOME."/.vim/ftplugin/ruby/erubyrc.vim"
:nnoremap ∃errc :vsplit $ERUBYRC<cr>
:command! ErubyGr vsp /usr/share/vim/vim74/syntax/eruby.vim
:nnoremap ∃erc :vsplit ~/.vim/colors/eruby.vim<cr>

:augroup eRuby
:autocmd!
  :autocmd Filetype eruby :source $ERUBYRC
:augroup END

"Load conf for snippets files
:let $SNIPPETSRC = $HOME."/.vim/ftplugin/snippets/snippetsrc.vim"
:nnoremap <leader>editsnippetsrc :vsplit $SNIPPETSRC<cr>
:nnoremap <leader>sourcesnippetsrc :source $SNIPPETSRC<cr>
:augroup Snippets
:autocmd!
  :autocmd Filetype snippets :source $SNIPPETSRC
:augroup END

"in parenthesis / brackets / braces
 "i( i[ i{ works, just like i" i' i<
"in the next parenthesis
:onoremap in( :<c-u>normal! f(vi(<cr>
"in the last parenthesis
:onoremap il( :<c-u>normal! F)vi(<cr>
"in the next brackets
:onoremap in[ :<c-u>normal! f[vi[<cr>
"in the last brackets
:onoremap il[ :<c-u>normal! F]vi[<cr>
"in the next braces
:onoremap in{ :<c-u>normal! f{vi{<cr>
"in the last braces
:onoremap in{ :<c-u>normal! F{vi{<cr>

"wrapping lines
:set wrap
:set textwidth=0
:set wrapmargin=0
:set linebreak
:set nolist

"show matching parens
:set showmatch
:set matchtime=1

"remap the directionnal pad to switch split
:nnoremap   <Left>    <C-W>h
:nnoremap   <Right>   <C-W>l
:nnoremap   <Up>      <C-W>k
:nnoremap   <Down>    <C-W>j

"prefill search command
"ß is alt-gr and s, „ is the same with shift
:nnoremap <leader>s :s/
:nnoremap <leader>S :%s/

"save the file
:nnoremap <leader><leader> :w<cr>

" Tabularize
:vnoremap <leader>t= :Tabularize /=<cr>
:vnoremap <leader>t, :Tabularize /,\zs<cr>
:vnoremap <leader>tt :Tabularize / <cr>
:nnoremap <leader>t= :Tabularize /=<cr>
:nnoremap <leader>t, :Tabularize /,\zs<cr>
:nnoremap <leader>tt :Tabularize / <cr>


" Center the screen after movement
:nnoremap h hzz
:nnoremap j jzz
:nnoremap k kzz
:nnoremap l lzz

:function! RepeatCommand(command, ...)
: if a:0 > 0
:   let l:step = a:1 . "m"
: else
:   let l:step = "10m"
: end

: let c = 1
: while c <= 10
:   execute "normal! " . a:command
:	  let c = c + 1
:   execute "sleep " . l:step
:   redraw!
: endwhile  
:endfunction

" win makes movement 10 times faster
:nnoremap <leader>j :call RepeatCommand("jzz", "8")<cr>
:nnoremap <leader>k :call RepeatCommand("kzz", "8")<cr>

"Keyboard selection
":noremap <leader>kfr :silent !fkey<cr><C-l>
":noremap <leader>kfp :silent !fpkey<cr><C-l>
":noremap <leader>kj :silent !jkey<cr><C-l>
":noremap <leader>kp :silent !pkey<cr><C-l>

"Keyboard change
":noremap ∃kfr :sp ~/.xkb/french<cr>
":noremap ∃kfp :sp ~/.xkb/french_programming<cr>
":noremap ∃kj :sp ~/.xkb/japanese<cr>
":noremap ∃kp :sp ~/.xkb/prog<cr>
