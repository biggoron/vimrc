:autocmd Filetype html :setlocal wrap
:autocmd Filetype html :setlocal shiftwidth=2
:autocmd Filetype html :setlocal noautoindent
:autocmd Filetype html :setlocal smarttab
:autocmd Filetype html :setlocal expandtab
:autocmd Filetype html :setlocal tabstop=2

"select balise content (doesn't support nesting)
:onoremap ib :<c-u>normal! F>vf<<cr>
:onoremap inb :<c-u>normal! f>vf<<cr>
:onoremap ilb :<c-u>normal! F<vF<<cr>

"add a paragraph balise
:nnoremap <localleader>p i<p>ô</p><esc>Fôx 
"add a div balise
:nnoremap <localleader>d i<div>ô</div><esc>Fôx 
"add a title balise
:nnoremap <localleader>h i<h1>ô</h1><esc>Fôx 
"close balise 
:nnoremap <localleader>b F<yf>f>aô<esc>pF<a/<esc>Eldt>Fôx<esc>
"ul balise
:nnoremap <localleader>u i<ul>ô</ul><esc>Fôi<cr><esc>a<cr><esc>?ô<cr>>>
"li balise
:nnoremap <localleader>l i<li>ô</li><esc>Fô
"add class attribute
:nnoremap <localleader>ca f>i<space>class="ô"<esc>Fô
"add role attribute
:nnoremap <localleader>ra f>i<space>role="ô"<esc>Fô
"add id attribute
:nnoremap <localleader>ida f>i<space>id="ô"<esc>Fô
"add style attribute
:nnoremap <localleader>sa f>i<space>style="ô"<esc>Fô
"surround with link tag
:nnoremap <localleader>swa bi<a href="#"><esc>wwi</a><esc>
