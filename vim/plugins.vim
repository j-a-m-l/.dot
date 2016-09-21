" PLUGINS

source ~/.vim/config/plugins/ultisnips.vim
source ~/.vim/config/plugins/supertab.vim

" ECLIM
" Para que use Exuberant Ctags
"let g:EclimTaglistEnabled = 0
"let g:EclimLogLevel = 10

" TagBar
let g:tagbar_width = 32 " 32 plus 2 windows of 80
let g:tagbar_usearrows = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_compact = 1
let g:tagbar_autofocus = 0
map <LEADER>g :TagbarToggle<CR>

" Taglist-plus
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = 'name'
let Tlist_Compact_Format = 1
" Para que no seleccione variables irrelevantes
"let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Exit_OnlyWindow = 1
" FIXME Al abrir un archivo debería actualizarse
let Tlist_GainFocus_On_ToggleOpen = 0
" Los nombres suelen ser muy largos...
"let Tlist_Display_Prototype = 1

source ~/.vim/config/plugins/syntastic.vim

" NERDTree options
let NERDChristmasTree=1
let NERDTreeCaseSensitiveSort=0
let NERDTreeChDirMode=2
let NERDTreeWinSize=32 " 32 plus 2 windows of 80
let NERDTreeArrows=1
let NERDTreeIgnore=['\.svn$', '\.git$', '\.pyc$', '\.beam$']
let NERDTreeBookmarksFile = $HOME . "/.dot.private/vim/Config/NERDTreeBookmarks"
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=0
let NERDTreeQuitOnOpen=0
map <Leader>n :NERDTree<CR>

" Project
" Ancho de la ventana
let g:proj_window_width = 30
" Se incrementará ocasionalmente en
let g:proj_window_increment = 10
map <silent> <Leader>p <Plug>ToggleProject

" Easytagas && ctags highlighting TODO Por ahora creo que es mejor a mano
"let g:easytags_cmd = '/usr/bin/ctags-exuberant'
"let g:easytags_file = '~/.vim.private/Tags/tags'
"let g:easytags_dynamic_files = 1 
"let g:easytags_by_filetype = '~/.vim.private/Tags/' 
"let g:easytags_include_members = 1
"let b:TypesFileRecurse = 1
" ¿qué hace esta opción?
"let b:TypesFileLanguages = ['php']

" Colorizer
autocmd FileType css :ColorHighlight
autocmd FileType html :ColorHighlight
autocmd FileType vim :ColorHighlight

" Vim-Wiki
let g:vimwiki_list = [{'path': '~/.dot.private/vim/wiki/'},
	\ {'path': '~/.dot.private/vim/wiki-tasks/'},
	\ {'path': '~/.dot.private/vim/wiki-gym/'}]
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_stripsym = '_'
let g:vimwiki_badsyms = ' #'
let g:vimwiki_folding = 1
let g:vimwiki_folding_lists = 1
let g:vimwiki_camel_case = 0
:hi VimwikiHeader2 guifg=#229CFD gui=bold
:hi VimwikiHeader3 guifg=#229944 gui=bold
:hi VimwikiHeader4 guifg=#AC9ADA gui=bold

" EasyMotion
let g:EasyMotion_leader_key = '<C-e>'
let g:EasyMotion_grouping = 2
map <Space> <C-e>f

" command-t
let g:CommandTMatchWindowReverse = 1

" VimDebugger (PHP)
nmap <F4> :DbgListen<CR>
nmap <F5> :DbgStepInto<CR>
nmap <F6> :DbgStepOver<CR>
nmap <F7> :DbgStepOut<CR>
nmap <F8> :DbgRun<CR>
nmap <F9> :DbgDetach<CR>
nmap ñbp :DbgToggleBreakpoint<CR>

" Yankring
" FIXME tiene un problema con las macros
let g:yankring_enabled = 0

" CtrlP
let g:ctrlp_max_height = 20
let g:ctrlp_dotfiles = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.svn$\|node_modules$',
  \ 'file': '\.so$',
  \ }

" PDV (PHPDocumentator for Vim) TODO change this maps
" imap <Leader>d <ESC>:call PhpDocSingle()<CR>i
" nmap <Leader>d :call PhpDocSingle()<CR>
" vmap <Leader>d :call PhpDocRange()<CR>

"===========================================================================
" dbext.vim callback function
"  a) Colour the header row for each table in the result set
"  Note: This script uses Align.vim plugin
"        <www.vim.org/scripts/script.php?script_id=294>
"        to do the column formatting and assumes that '|' character is
"        the column separator
"===========================================================================
function! DBextPostResult(db_type, buf_nr)
  " Highlight the column names in the result table's header row
  " Define colour scheme. (Or you can use an existing name like 'Comment' etc.)
  hi TableHead guifg=#F4DDBD guibg=#469DD1 gui=bold ctermfg=NONE ctermbg=red cterm=NONE
  " 1. Find the header row and the borders above and below it
  syn match tableHead /+-.*+\n|.*\n+-.*\n|/he=e-1 contains=headText,divRow
  " 2. Find the column names to colour
  syn match headText /[^|]\+/ contained
  " 3. Exclude the border rows above and below
  syn match divRow /^+-.*/ contained
  " 4. Set the text colouring for the column headers
  hi link headText TableHead

  " Clear highlighting for previously matched characters
  let @/ = ""
endfunction


"
" neocomplete
"

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycompleteComplete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


"
" rust.vim TODO until 7.4:248
"
" let g:rustfmt_autosave = 1

"
" vim-racer
"
set hidden
let g:racer_cmd = $HOME."/.cargo/bin/racer"
let $RUST_SRC_PATH = $HOME."/.rust/rustc-1.6.0/src"

source ~/.vim/config/plugins/vim-session.vim
