" No map <Leader>tc to ColorToggle
let g:colorizer_nomap = 1
" Disable on long buffers
let g:colorizer_maxlines = 1000

autocmd FileType css :ColorHighlight
autocmd FileType html :ColorHighlight
autocmd FileType vim :ColorHighlight
