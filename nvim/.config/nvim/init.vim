" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
"
set termguicolors

set shell=/bin/zsh

let g:vi_config_path = "~/Code/dot/vi/"

" MAPS
execute 'source '.fnameescape(g:vi_config_path . "maps/index.vim")
