" C
"
" Version:      0.0.7
" Last Change:  2013 Mar 22
" Language:     C
" Author:       Juan Antonio Martín Lucas <>
" URL: 
" License: MIT
" Notes: TODO a lot TODO name: iron_c? TODO black and greys colors

let g:colors_name = "c"

" Colors 1{{{
let s:colors = {
\    'A'                : '#0000FF',
\    'B'                : '#D0D0D0',
\    'C'                : '#000F00',
\    'D'                : '#00F0F0',
\    'F'                : '#F00F00',
\    'G'                : '#090290',
\    'X'                : '#00FF00',
\    'Y'                : '#FFFF00',
\    'Z'                : '#FF00FF',
\    }
" }}}1

fun! s:c(name, guifg, guibg, attr, ctermfg, ctermbg)
  let l:cmd='hi '.a:name

  if ! empty(a:guifg)
	let l:cmd=l:cmd.' guifg='.s:colors[a:guifg]
  endif
  if ! empty(a:guibg)
	let l:cmd=l:cmd.' guibg='.s:colors[a:guibg]
  endif
  if ! empty(a:attr)
	let l:cmd.=' gui='.a:attr
  endif
  if ! empty(a:ctermfg)
	let l:cmd.=' ctermfg='.s:colors[a:ctermfg]
  endif
  if ! empty(a:ctermbg)
	let l:cmd.=' ctermbg='.s:colors[a:ctermbg]
  endif

  exec l:cmd
endfun

" TODO end
