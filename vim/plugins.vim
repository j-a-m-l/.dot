" PLUGINS

" ECLIM
" Para que use Exuberant Ctags
"let g:EclimTaglistEnabled = 0
"let g:EclimLogLevel = 10

" TagBar
let g:tagbar_width = 36
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

" Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
   \ 'active_filetypes': ['ruby', 'php', 'javascript', 'html', 'css'],
   \ 'passive_filetypes': [] }
let g:syntastic_javascript_checker = 'jshint'

" NERDTree options
let NERDChristmasTree=1
let NERDTreeCaseSensitiveSort=0
let NERDTreeChDirMode=2
let NERDTreeWinSize=36
let NERDTreeArrows=1
let NERDTreeIgnore=['\.svn$', '\.git$']
let NERDTreeBookmarksFile = $HOME . "/.dot.private/vim/Config/NERDTreeBookmarks"
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=0
let NERDTreeQuitOnOpen=0
map <Leader>n :NERDTree<CR>

" Supertab settings
" Para que utilice el contexto al decidir qué tipo de autocompletado usar
let g:SuperTabDefaultCompletionType = "context"
" 
let g:SuperTabDefaultCompletionTypeDiscovery = [
\ "&omnifunc:<C-X><C-O>",
\ "&completefunc:<C-X><C-U>",
\ ]
let g:SuperTabLongestHighlight = 1
" Para SQL debería usar C-X C-O para consultar con la bb.dd. TODO

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

" PDV (PHPDocumentator for Vim)
imap <C-d> <ESC>:call PhpDocSingle()<CR>i
nmap <C-d> :call PhpDocSingle()<CR>
vmap <C-d> :call PhpDocRange()<CR>

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
