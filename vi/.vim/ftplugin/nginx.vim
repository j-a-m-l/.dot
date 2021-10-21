" TODO test
au BufNewFile,BufRead */nginx/conf.d/*.conf set ft=nginx
au BufNewFile,BufRead nginx.conf set ft=nginx

setlocal commentstring=#\ %s

" Tabulation
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
