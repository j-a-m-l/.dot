" COMMANDS

" Unix date
command! Date :r! date +"\%d-\%m-\%Y"
command! DateTime :r! date +"\%a \%d-\%m-\%Y \%T"
command! Time :r! date +"\%H:\%M"
command! TimeWithSeconds :r! date +"\%T"

" Match always TODOs and FIXMEs TODO
highlight TodosAndFixmes ctermbg=darkred guibg=darkred ctermfg=white guifg=black gui=bold
syntax match TodosAndFixmes /TODO/
syntax match TodosAndFixmes /FIXME/

" Remember last location in file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" nnoremap <C-K> :call HighlightNearCursor()<CR>
" function HighlightNearCursor()
"   if !exists("s:highlightcursor")
"     match Todo /\k*\%#\k*/
"     let s:highlightcursor=1
"   else
"     match None
"     unlet s:highlightcursor
"   endif
" endfunction

" Run current file
command R !./%
