let g:javascript_plugin_jsdoc = 1

set conceallevel=1
let g:javascript_conceal_this = "@"

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
