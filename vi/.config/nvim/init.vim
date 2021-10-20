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

" MAPS
execute 'source ' . fnameescape(g:vi_config_path . 'maps/_index_.vim')

" PLUGINS (configuration)
execute 'source ' . fnameescape(g:vi_config_path . 'config/plugins/_index_.vim')

" FileType
execute 'source ' . fnameescape(g:vi_config_path . 'ftplugin/_index_.vim')

" CUSTOMIZATIONS
execute 'source ' . fnameescape(g:vi_config_path . 'custom/_index_.vim')

" Private configuration TODO
source ~/dot.private/vim/vimrc.vim
