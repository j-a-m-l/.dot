let g:vi_config_path = $DOT_HOME . '/vi/'
"
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

filetype off

" Plugins (installation)"
execute 'source ' . fnameescape(g:vi_config_path . 'config/plugins.vim')

" Turn on again
filetype plugin indent on

set shell=/bin/zsh

execute 'source ' . fnameescape(g:vi_config_path . 'config/settings.vim')

" PLUGINS (configuration)
execute 'source ' . fnameescape(g:vi_config_path . 'config/plugins/index.vim')

" MAPS
execute 'source ' . fnameescape(g:vi_config_path . 'maps/index.vim')

" CUSTOMIZATIONS
execute 'source ' . fnameescape(g:vi_config_path . 'custom/index.vim')

" Private configuration TODO
source ~/dot.private/vim/vimrc.vim
