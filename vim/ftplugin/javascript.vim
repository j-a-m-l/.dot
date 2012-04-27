" Abrimos siempre
"TagbarOpen
"TlistOpen

" Tabulación
set shiftwidth=2
set tabstop=2
set softtabstop=2

" JSON syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
