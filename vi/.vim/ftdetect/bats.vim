" From https://github.com/vim-scripts/bats.vim

au BufRead,BufNewFile *.bats set filetype=sh

syn match batsTest        "\v\@test"
syn keyword batsKeyword   run containedin=shExpr contained

hi def link batsTest      Identifier
hi def link batsKeyword   Keyword
