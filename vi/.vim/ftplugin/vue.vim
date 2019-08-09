" Tabulation
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Prevents supporting every preprocessor language highlighting
let g:vue_disable_pre_processors=1

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
