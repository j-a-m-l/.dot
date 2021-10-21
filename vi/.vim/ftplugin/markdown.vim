
"
" Markdown
"

" Add headers
autocmd FileType mkd noremap <buffer> <Leader>h1 yypVr=
autocmd FileType mkd noremap <buffer> <Leader>h2 yypVr-

" Allow folding FIXME: provokes performance issues
" let g:markdown_folding = 1
