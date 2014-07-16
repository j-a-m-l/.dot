" Erlang
"
" Version:      0.0.7
" Last Change:  2013 Mar 22
" Language:     Erlang
" Author:       Juan Antonio Martín Lucas <>
" URL: 
" License: MIT
" Notes: a lot TODO

let g:colors_name = "erlang"

" Colors 1{{{
let s:colors = {
\    'A'                : '#0000F0',
\    'B'                : '#D0D0D0',
\    'C'                : '#FF0F00',
\    'D'                : '#00F0F0',
\    'F'                : '#F0F000',
\    'G'                : '#00F080',
\    'X'                : '#00FF00',
\    'record'                : '#0095B0',
\    'spawn'                : '#006090',
\    'Z'                : '#FF00FF',
\    'atomic'                : '#C080D0',
\    'list'                : '#F7C7D7',
\    'macro'                : '#F080C0',
\    'tuple'                : '#877080',
\    'operator'                : '#F04B00',
\    'darkerComment'                : '#999999',
\    'darkerString'                : '#BBBBBB',
\    'greyString'                : '#CCCCCC',
\    'var'                : '#F08080',
\    'whiteComment'                : '#DDDDDD',
\    }
" }}}1
" FIXME
" \    'include'                : 'B0FF00',

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

call s:c( 'erlangTodo', 'whiteComment', '', 'bold', '', '')
call s:c( 'erlangString', 'greyString', '', '', '', '')
call s:c( 'erlangNoSpellString', 'spawn', '', '', '', '')
call s:c( 'erlangModifier', 'C', '', '', '', '')
call s:c( 'erlangStringModifier', 'darkerString', '', 'bold', '', '')
call s:c( 'erlangComment', 'whiteComment', '', '', '', '')
call s:c( 'erlangAnnotation', 'darkerComment', '', '', '', '')
call s:c( 'erlangVariable', 'var', '', '', '', '')
" call s:c( 'erlangInclude', 'include', '', '', '', '')
call s:c( 'erlangRecordDef', 'C', '', '', '', '')
call s:c( 'erlangAttribute', 'C', '', '', '', '')
call s:c( 'erlangKeyword', 'G', '', 'bold', '', '')
call s:c( 'erlangMacro', 'macro', '', 'bold', '', '')
call s:c( 'erlangDefine', 'C', '', 'bold', '', '')
call s:c( 'erlangPreCondit', 'C', '', 'bold', '', '')
call s:c( 'erlangPreProc', 'F', '', '', '', '')
call s:c( 'erlangDelimiter', 'C', '', '', '', '')
call s:c( 'erlangBitDelimiter', 'C', '', '', '', '')
call s:c( 'erlangOperator', 'operator', '', 'bold', '', '')
call s:c( 'erlangConditional', 'C', '', '', '', '')
call s:c( 'erlangGuard', 'C', '', 'bold', '', '')
call s:c( 'erlangBoolean', 'C', '', '', '', '')
call s:c( 'erlangAtom', 'atomic', '', '', '', '')
call s:c( 'erlangRecord', 'record', '', '', '', '')
call s:c( 'erlangInteger', 'C', '', '', '', '')
call s:c( 'erlangFloat', 'C', '', '', '', '')
call s:c( 'erlangHex', 'C', '', '', '', '')
call s:c( 'erlangFun', 'C', '', 'bold', '', '')
call s:c( 'erlangList', 'list', '', 'bold', '', '')
call s:c( 'erlangTuple', 'tuple', '', 'bold', '', '')
call s:c( 'erlangBinary', 'C', '', '', '', '')
call s:c( 'erlangBitVariable', 'C', '', '', '', '')
call s:c( 'erlangBitType', 'C', '', '', '', '')
call s:c( 'erlangType', 'C', '', '', '', '')
call s:c( 'erlangBitSize', 'C', '', '', '', '')

" Optional highlighting
if exists("g:erlang_highlight_bif")
	if g:erlang_highlight_bif
		call s:c( 'erlangBIF', 'spawn', '', 'bold', '', '')
		call s:c( 'erlangGBIF', 'Z', '', '', '', '')
	endif
endif

" TODO end
