" Tabulation
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" FIXME
au BufNewFile,BufRead Guardfile set ft=ruby
au BufNewFile,BufRead Vagrantfile set ft=ruby
