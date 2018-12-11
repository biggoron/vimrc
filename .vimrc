:set nocompatible
:set encoding=utf-8
:filetype plugin on

" makes ! behave the same than console (aliases, etc...)
" :set shellcmdflag=-ic

"ctrlP plugin
:set runtimepath^=~/.vim/bundle/ctrlp.vim

"Pathogen, for plugins
execute pathogen#infect()

"colorscheme
syntax enable
set t_Co=16
colorscheme solarized
set background=dark
:set nohlsearch

" Leaders
"definition of leader key
:let mapleader = "ù"

"definition of local leader key
:let maplocalleader = "-"

" NERDTree
" TODO: install Nerdtree
:nnoremap <F1> :NERDTreeToggle<cr>

"Configuration file
:syntax on

"quick edit .vimrc in a split of the screen
:nnoremap <F2> :vsplit ~/.vimrc<cr>
"quick source main config file .vimrc
:nnoremap <F3> :source $MYVIMRC<cr>

"quick edit vim ideas:
:nnoremap <F12> :vsplit ~/.vim/ideas.vim<cr>

" prefill search for snippet file
:nnoremap <F4> :vsp ~/.vim/bundle/vim-snippets/snippets/

"search fr placeholder
":nnoremap é" /@@@<cr>
":nnoremap é& ?@@@<cr>
":nnoremap éé 3s


"left side numbers
:set number
:nnoremap ¶ :set rnu!<cr>
:nnoremap ® :set nu!<cr>

"uppercase
:nnoremap <leader>u viwUe
"en mode insertion
:inoremap <c-u> <esc>viwUea
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

:nnoremap → :set autoindent<cr>
:nnoremap ı :set noautoindent<cr>
:nnoremap <leader>swé :set shiftwidth=2<cr>
:nnoremap <leader>sw' :set shiftwidth=4<cr>

"Load conf for python files
:let $PYTHONRC = $HOME."/.vim/ftplugin/python/pythonrc.vim"
:let $PYTHONSNRC = $HOME."/.vim/bundle/vim-snippets/snippets/python.snippets"
:nnoremap <F5> :vsplit $PYTHONRC<cr>
:nnoremap <F6> :source $PYTHONRC<cr>
:augroup Python
:autocmd!
  :autocmd Filetype python :source $PYTHONRC
:augroup END

"Load conf for js files
:let $JSRC = $HOME."/.vim/ftplugin/javascript/javascript.vim"
:augroup Javascript
:autocmd!
  :autocmd Filetype javascript :source $JSRC
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
"TODO: adapt to french keyboard and new writing
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
:nnoremap <leader>updatesnippets :call ReloadAllSnippets()<cr>
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
:vnoremap <F8> :Tabularize /


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

:let g:snippets_dir = "~/.vim/snippets"
"indent
:nnoremap à >>
:nnoremap ç <<

" Automatch
:let g:AutoPairsShortcutToggle = 'µ'
:let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}
:let g:AutoPairsShortcutFastWrap = 'ł'
:let g:AutoPairsShortcutJump = 'ĸ'

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


"Comments

:let g:NERDCommentEmptyLines = 1
:let g:NERDToggleCheckAllLines = 1
:let g:NERDCompactSexyComs = 1
:let g:NERDSpaceDelims = 1

" Shamrock
:ab ehsm ~/Documents/projects/EulerHermes/shamrock_model/

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

" bind K to grep word under cursor
:nnoremap ¤ :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>j

:command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw

" Quick fix can open files in vertical split with leader enter
autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L

" Git
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

" Easymotion
map <Space> <Plug>(easymotion-prefix)
map <Space>l <Plug>(easymotion-lineforward)
map <Space>h <Plug>(easymotion-linebackward)
:let g:EasyMotion_smartcase = 1
map  <Space><Space> <Plug>(easymotion-sn)
omap <Space><Space> <Plug>(easymotion-tn)

" Buffers
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
nnoremap :wq :w<cr>:bdelete<cr>
nnoremap == :bdelete!<cr>

:nnoremap Q :echo @%<cr>
