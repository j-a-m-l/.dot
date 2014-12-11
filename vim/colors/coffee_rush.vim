" Vim color file
"
" Author: Juan Antonio Martín Lucas <>
" Version: 0.3.0
" Last Change: 2013 Mar 22
" URL: 
" License: MIT
" Notes: CoffeeScript oriented color theme

let g:colors_name = "coffee rush"

" Colors 1{{{
let s:colors = {
    \    'brownBool'                : '#880000',
    \    'brownCurly'                : '#CF7969',
    \    'brownEscape'                : '#DF6666',
    \    'brownString'                : '#BF9999',
    \    'grayInterpolation'                : '#9F8888',
    \    'brownLongString'                : '#9D4444',
    \    'purpleX' : '#663366',
\    'blueAssign'                : '#009999',
\    'blueConstant'                : '#149515',
\    'Object'                : '#14AD04',
\    'greenKeyword'           : '#247D45',
\    'Dot'                : '#BB9090',
\    'X'                : '#00FF00',
\    'Y'                : '#FFFF00',
\    'Z'                : '#FF00FF',
\    'Bracket'                : '#CD6789',
\    'Repeat'                : '#4D2729',
\    'pinkComment'                : '#F0CCCC',
\    'pinkTodo'                : '#F09C9C',
\    'Heredoc'                : '#F0BCBC',
\    'conditional'           : '#440000',
\    'Var'                : '#B07777',
\    'Global'                : '#AA0000',
\    'Comma'                : '#CC9090',
\    'Statement'                : '#FF4030',
\    'Operator'                : '#FB9090',
\    'Exception'                : '#FB6090',
\    'Extended'                : '#BB0000',
\    'Embed'                : '#FF0000',
\    'Number'                : '#AF6000',
\    'Float'                : '#FF0000',
\    'Proto'                : '#FF0000',
\    'Paren'           : '#0F80C0',
\    'Function'                : '#0F80C0',
    \    }
" }}}1
"'#BB9988','#449D14' '#448800', '#CD6789' '#0F80C0' '#AA4444', '#44AD15'

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
call s:c( 'coffeeBlock', 'Z', '', '', '', '')
call s:c( 'coffeeBlockComment', 'Heredoc', '', '', '', '')
call s:c( 'coffeeBoolean', 'brownBool', '', 'bold', '', '')
call s:c( 'coffeeBracket', 'Bracket', '', '', '', '')
call s:c( 'coffeeComment', 'pinkComment', '', 'italic', '', '')
call s:c( 'coffeeConditional', 'conditional', '', 'bold', '', '')
call s:c( 'coffeeConstant', 'blueConstant', '', 'bold', '', '')
call s:c( 'coffeeCurly', 'brownCurly', '', '', '', '')
call s:c( 'coffeeDotAccess', 'Dot', '', '', '', '')
call s:c( 'coffeeEmbedDelim', 'Embed', '', '', '', '')
call s:c( 'coffeeEscape', 'brownEscape', '', 'bold', '', '')
call s:c( 'coffeeException', 'Exception', '', 'bold', '', '')
call s:c( 'coffeeExtendedOp', 'Extended', '', '', '', '')
call s:c( 'coffeeFloat', 'Float', '', '', '', '')
" Also for null
call s:c( 'coffeeGlobal', 'Global', '', 'bold', '', '')
call s:c( 'coffeeHeredoc', 'brownLongString', '', '', '', '')
call s:c( 'coffeeHeregex', 'Y', '', '', '', '')
call s:c( 'coffeeHeregexComment', 'Heredoc', '', '', '', '')
call s:c( 'coffeeInterpDelim', 'grayInterpolation', '', '', '', '')
call s:c( 'coffeeKeyword', 'greenKeyword', '', 'bold', '', '')
call s:c( 'coffeeNumber', 'Number', '', '', '', '')
call s:c( 'coffeeRegex', 'purpleX', '', '', '', '')
call s:c( 'coffeeObject', 'Object', '', 'bold', '', '')
call s:c( 'coffeeObjAssign', 'blueAssign', '', '', '', '')
call s:c( 'coffeeOperator', 'Operator', '', 'bold', '', '')
call s:c( 'coffeeProtoAccess', 'Proto', '', '', '', '')
call s:c( 'coffeeParen', 'Paren', '', 'bold', '', '')
call s:c( 'coffeeRepeat', 'Repeat', '', 'bold', '', '')
call s:c( 'coffeeStatement', 'Statement', '', 'bold', '', '')
call s:c( 'coffeeString', 'brownString', '', '', '', '')
call s:c( 'coffeeSpecialOp', 'Comma', '', '', '', '')
call s:c( 'coffeeSpecialVar', 'Var', '', 'bold', '', '')
call s:c( 'coffeeTodo', 'pinkTodo', '', 'bold', '', '')

" My changes TODO
" new, class, etc as special keywords
" members
" DONE:
call s:c( 'coffeeFunction', 'Function', '', 'bold', '', '')
" }}}1
