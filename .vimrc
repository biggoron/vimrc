""""""""""""""
" PARAMETERS "
""""""""""""""
:let mapleader = "ù"
:let maplocalleader = "!"
:let $VIMDIR = $HOME."/.vim/"
:let $VIMCONF = $VIMDIR."/.vimrc"

"""""""""""
" GENERAL "
"""""""""""
:set nocompatible
:set encoding=utf-8
:filetype plugin on

:set shell=bash
" makes ! behave the same than console (aliases, etc...)
:set shellcmdflag=-ic

:set updatetime=100

" Left side numbers
:set number
:nnoremap <leader>ir :set rnu!<cr>
:nnoremap <leader>ii :set nu!<cr>

" Indentation
"default indenting and tabbing
"indent is a multiple of shiftwidth
:setlocal shiftround
:setlocal shiftwidth=4
"indent by default each line like the one before
:setlocal autoindent
"a tab shifts the remaining text on the right to
"a multiple of shiftwidth
:setlocal smarttab
"tabs are blanks
:setlocal expandtab
"nb of spaces corresponding to a tab
:setlocal tabstop=4
"on i key
:nnoremap <leader>ia :set autoindent!<cr>
:nnoremap <leader>i2 :set shiftwidth=2<cr>
:nnoremap <leader>i4 :set shiftwidth=4<cr>

"wrapping lines
:set wrap
:set textwidth=0
:set wrapmargin=0
:set linebreak
:set nolist

"show matching parens
:set showmatch
:set matchtime=1

" Print file path
:nnoremap Q :echo @%<cr>

"""""""""""
" PLUGINS "
"""""""""""
"Pathogen
execute pathogen#infect()
execute pathogen#helptags()
packloadall 

"ctrlP
:set runtimepath^=~/.vim/bundle/ctrlp.vim

" NERDTree
:nnoremap <F1> :NERDTreeToggle<cr>

" Tabularize
:vnoremap <leader>t= :Tabularize /=<cr>
:vnoremap <leader>t, :Tabularize /,\zs<cr>
:vnoremap <leader>tt :Tabularize / <cr>
:nnoremap <leader>t= :Tabularize /=<cr>
:nnoremap <leader>t, :Tabularize /,\zs<cr>
:nnoremap <leader>tt :Tabularize / <cr>
" Arrays
:vnoremap <leader>ta :Tabularize /\v ([)?(-)?\d+(,)?
:vnoremap <F8> :Tabularize /

"""""""""""""""
" COLORSCHEME "
"""""""""""""""
:syntax enable
:set t_Co=16
:colorscheme solarized
:set background=dark
:set nohlsearch

"""""""""""""""""
" CONFIGURATION "
"""""""""""""""""
" Configuration file
:syntax on

" quick edit .vimrc in a split of the screen
:nnoremap <F2> :vsplit $VIMCONF<cr>
" quick source main config file .vimrc
:nnoremap <F3> :source $VIMCONF<cr>


"Load conf for python files
:let $PYTHONRC = $VIMDIR."ftplugin/python/pythonrc.vim"
:nnoremap <F4> :vsplit $PYTHONRC<cr>
:nnoremap <F5> :source $PYTHONRC<cr>
:augroup Python
:autocmd!
  :autocmd Filetype python :source $PYTHONRC
  :nnoremap <F7> :SnipMateLoadScope!(python)<cr>
:augroup END

"Load conf for snippets files
:let $SNIPPETSDIR = $VIMDIR."snippets/"
:nnoremap <F6> :vsplit $SNIPPETSDIR<cr>


""""""""""""""""""""""
" WORD MANIPULATION " 
""""""""""""""""""""""
"uppercase
:nnoremap <leader>u viwUe
"en mode insertion
:inoremap <c-u> <esc>viwUea

"prefill search command
:nnoremap <leader>ss :s/
:nnoremap <leader>SS :%s/


"""""""""""""
" MOVEMENTS "
"""""""""""""
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
:onoremap il{ :<c-u>normal! F{vi{<cr>
"in the next double quotes
:onoremap in" :<c-u>normal! f"vi"<cr>
"in the last double quotes
:onoremap il" :<c-u>normal! F"vi"<cr>
"in the next simple quotes
:onoremap in' :<c-u>normal! f'vi'<cr>
"in the last simple quotes
:onoremap il' :<c-u>normal! F'vi'<cr>

"remap the directionnal pad to switch split
:nnoremap   <Left>    <C-W>h
:nnoremap   <Right>   <C-W>l
:nnoremap   <Up>      <C-W>k
:nnoremap   <Down>    <C-W>j

" Center the screen after movement
:nnoremap h hzz
:nnoremap j jzz
:nnoremap k kzz
:nnoremap l lzz

"save the file
:nnoremap <leader><leader> :w<cr>

" Automatch
:let g:AutoPairsShortcutToggle = 'µ'
:let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
:let g:AutoPairsShortcutFastWrap = '-'
:let g:AutoPairsShortcutJump = '_'

" airline
:let g:airline_powerline_fonts = 1
:let g:airline#extensions#ale#enabled = 1
:let g:airline#extensions#tabline#enabled = 1
:let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
:let g:airline#extensions#tabline#show_tab_nr = 1
:let g:airline#extensions#tabline#formatter = 'unique_tail'
:let g:airline#extensions#tabline#buffer_nr_show = 1
:let g:airline#extensions#tabline#fnametruncate = 16
:let g:airline#extensions#tabline#fnamecollapse = 2
:let g:airline#extensions#tabline#buffer_idx_mode = 1

"ALE
:nmap <silent> <C-k> <Plug>(ale_previous_wrap)
:nmap <silent> <C-j> <Plug>(ale_next_wrap)
:nnoremap £ :ALEFix<cr>

"PowerLine setup
:set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
:set laststatus=2
:set t_Co=256


"Comments
:let g:NERDCommentEmptyLines = 1
:let g:NERDToggleCheckAllLines = 1
:let g:NERDCompactSexyComs = 1
:let g:NERDSpaceDelims = 1

" CtrlP
:let g:ctrlp_working_path_mode = 'ar'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Quick grep on word under cursor
:nnoremap <leader>° :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" Quick grep on visual selection
vnoremap <leader>+ y:grep! "<C-r>=escape(@",'/\')<CR>"<CR>:cw<CR>

:command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw

" Quick fix can open files in vertical split with leader enter
autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L

"""""""
" GIT "
"""""""
:nnoremap <leader>gd :Gdiff<cr>
:nnoremap <leader>go :Gdiff origin<cr>
:nnoremap <leader>gc :Gcommit<cr>
:nnoremap <leader>gcc :Gcommit %<cr>
:nnoremap <leader>gce :Gcommit amend no-edit<cr>
:nnoremap <leader>gs :Gstatus<cr>
:nnoremap <leader>gp :Gpull<cr>
:nnoremap <leader>gP :Gpush<cr>
:nnoremap <leader>gm :Gmove
:nnoremap <leader>grm :Gdelete
:nnoremap <leader>gg :GitGutterToggle<cr>
:nmap <Leader>ga <Plug>GitGutterStageHunk
:nmap <Leader>gu <Plug>GitGutterUndoHunk
:nmap <leader>gj <Plug>GitGutterNextHunk
:nmap <leader>gk <Plug>GitGutterPrevHunk
" highlight link GitGutterAdd DiffAdd
" highlight link GitGutterDeleteLine DiffDelete
" highlight link GitGutterChangeLine DiffChange
" highlight link GitGutterChangeDeleteLine DiffChange

""""""""""
" MOTION "
""""""""""
map <Space> <Plug>(easymotion-prefix)
map <Space>l <Plug>(easymotion-lineforward)
map <Space>h <Plug>(easymotion-linebackward)
:let g:EasyMotion_smartcase = 1
map  <Space><Space> <Plug>(easymotion-sn)
omap <Space><Space> <Plug>(easymotion-tn)
map <leader>n <Plug>(easymotion-repeat)
silent! call repeat#set("\<Plug>easymotion-prefix", v:count)
silent! call repeat#set("\<Plug>easymotion-lineforward", v:count)
silent! call repeat#set("\<Plug>easymotion-linebackward", v:count)
silent! call repeat#set("\<Plug>easymotion-sn", v:count)
silent! call repeat#set("\<Plug>easymotion-tn", v:count)

"""""""""""
" BUFFERS "
"""""""""""
:nnoremap é :bn<cr>
:nnoremap ² :bp<cr>
:nnoremap <Space><cr> :ls<cr>
:nnoremap & :b#<cr>
:nmap <space>& <Plug>AirlineSelectTab1
:nmap <space>é <Plug>AirlineSelectTab2
:nmap <space>" <Plug>AirlineSelectTab3
:nmap <space>' <Plug>AirlineSelectTab4
:nmap <space>( <Plug>AirlineSelectTab5
:nmap <space>- <Plug>AirlineSelectTab6
:nmap <space>è <Plug>AirlineSelectTab7
:nmap <space>_ <Plug>AirlineSelectTab8
:nmap <space>ç <Plug>AirlineSelectTab9
:set hidden
:set confirm

nnoremap <CR><CR> :w<cr>:bdelete<cr>
nnoremap == :bdelete!<cr>

" Navigate Quickfix
:nnoremap à :cn<cr>
:nnoremap ç :cp<cr>
