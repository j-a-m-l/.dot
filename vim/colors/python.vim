" Vim color file
"
" Author: Juan Antonio Martín Lucas <>
" Version: 0.0.0
" Last Change: 2013 Mar 22
" URL: 
" License: MIT
" Notes: Python oriented color theme
" TODO something like "rastrero"?

let g:colors_name = "python"

" Colors 1{{{
let s:colors = {
	\    'BlueComment'             : '#BFD0C0',
    \    'BlueFun'                : '#0F90F0',
    \    'BlueStatement'             : '#0F40F0',
	\    'BlueString'             : '#6DB0A0',
    \    'GreenOperator'                : '#90D090',
    \    'YellowInclude'                : '#C09000',
    \    'OrangeNumber'                : '#F0A000',
\    'A'                : '#FF0000',
\    'YellowCondition'                : '#00D090',
\    'BlueRepeat'                  : '#10B060',
\    'blueDecorator'                : '#FF90D0',
\    'YellowBuilt'              : '#C090C0',
\    'GreenError'                : '#D03030',
\    'C'                : '#CCCCC0',
    \    'X'                : '#00FF00',
    \    'Y'                : '#FFFF00',
\    'Z'                : '#F000F0',
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

" Default highlighting 1{{{
call s:c( 'pythonStatement', 'BlueStatement', '', 'bold', '', '')
call s:c( 'pythonConditional', 'YellowCondition', '', 'bold', '', '')
call s:c( 'pythonRepeat', 'BlueRepeat', '', 'bold', '', '')
call s:c( 'pythonOperator', 'GreenOperator', '', 'bold', '', '')
call s:c( 'pythonException', 'GreenError', '', 'bold', '', '')
call s:c( 'pythonInclude', 'YellowInclude', '', 'bold', '', '')
call s:c( 'pythonDecorator', 'blueDecorator', '', 'bold', '', '')
call s:c( 'pythonFunction', 'BlueFun', '', 'bold', '', '')
call s:c( 'pythonComment', 'BlueComment', '', '', '', '')
call s:c( 'pythonTodo', 'BlueComment', '', 'bold', '', '')
call s:c( 'pythonString', 'BlueString', '', '', '', '')
call s:c( 'pythonRawString', 'BlueComment', '', '', '', '')
call s:c( 'pythonEscape', 'C', '', 'bold', '', '')
call s:c( 'pythonNumber', 'OrangeNumber', '', '', '', '')
call s:c( 'pythonBuiltin', 'YellowBuilt', '', 'bold', '', '')
call s:c( 'pythonExceptions', 'Z', '', 'bold', '', '')
call s:c( 'pythonSpaceError', 'A', '', '', '', '')
call s:c( 'pythonDoctest', 'BlueComment', '', '', '', '')
call s:c( 'pythonDoctestValue', 'X', '', '', '', '')
" }}}1
