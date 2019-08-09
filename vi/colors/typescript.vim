" Vim color file
"
" Author: Juan Antonio Martín Lucas <>
" Version: 0.0.0
" Last Change: 2018 Jan 08
" URL: 
" License: MIT
" Notes: TypeScript oriented color theme

let g:colors_name = "TodoScript"
" TODO red-typos ?
" TODO todoscript ?
" TODO darker comments
" FIXME `const` should not use the same colour than `this`
" TODO change brownBrace
" TODO change punkyException

" Colors 1{{{
let s:colors = {
\ ' brand new and original ': '',
    \    'purpleLabel'   : '#8953C9',
    \    'purpleReserved'   : '#5C13BA',
\ ' used FROM ysjs ': '',
    \    'blackNull'        : '#111111',
    \    'blueAwait'        : '#1C33FA',
    \    'blueOperator'     : '#458986',
    \    'blueStatement'    : '#222BA9',
    \    'blueString'       : '#528BF9',
    \    'blueThis'         : '#0082F8',
    \    'blueType'         : '#215096',
    \    'brownBrace'       : '#997788',
    \    'greenAttribute'   : '#45B986',
    \    'grayBool'         : '#444444',
    \    'greenEvent'       : '#15A578',
    \    'orangeComment'    : '#F9D0B8',
    \    'orangeDoc'        : '#F6C179',
    \    'orangeNumber'     : '#FA6900',
    \    'punkyException'   : '#E490F0',
    \    'purpleCondition'  : '#2C13DA',
    \    'redFun'           : '#FF106B',
    \    'redFunKeyword'    : '#FE4365',
\ ' used FROM ysjs but imporved': '',
\ ' NOT used, but FROM ysjs ': '',
    \    'black'            : '#000000',
    \    'blueBranch'       : '#525BA9',
    \    'blueCondition'    : '#1C13FA',
    \    'blueGlobalObject' : '#4466F9',
    \    'blueParen'        : '#097788',
    \    'bluePrototype'    : '#0495BF',
    \    'blueSpecial'      : '#A2CBF9',
    \    'blueLabel'        : '#B2CBF9',
    \    'brownConsole'     : '#D07455',
    \    'grayBracket'      : '#3B3A32',
    \    'grayPunc'         : '#ABAAA2',
    \    'orangeNoParam'    : '#C6A159',
    \    'orangeParam'      : '#DF8129',
    \    'pinkStatement'    : '#DD0060',
    \    'pinkException'    : '#F490D0',
    \    'purpleGlobal'     : '#D44090',
    \    'purpleLoop'       : '#5C43FA',
    \    'purpleRegex'      : '#5555CC',
    \    'purpleSpecial'    : '#9595CC',
    \    'redError'         : '#FF2424',
    \    'redReserved'      : '#BE1325',
    \    'U'                : '#30F0FF',
    \    'V'                : '#F030FF',
    \    'W'                : '#F0F090',
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

" typescript-vim highlighting 1{{{
call s:c( 'typescriptParameters', 'blueOperator', '', '', '', '')
call s:c( 'typescriptSuperBlock', 'blueOperator', '', '', '', '')

call s:c( 'typescriptEndColons', 'black', '', '', '', '')
call s:c( 'typescriptOpSymbols', 'blueOperator', '', '', '', '')
call s:c( 'typescriptLogicSymbols', 'black', '', '', '', '')
call s:c( 'typescriptBraces', 'brownBrace', '', 'bold', '', '')
call s:c( 'typescriptParens', 'blueOperator', '', '', '', '')
call s:c( 'typescriptComment', 'orangeComment', '', '', '', '')
call s:c( 'typescriptLineComment', 'orangeComment', '', '', '', '')
call s:c( 'typescriptRefComment', 'black', '', '', '', '')
call s:c( 'typescriptRefS', 'blueString', '', '', '', '')
call s:c( 'typescriptRefD', 'blueString', '', '', '', '')
call s:c( 'typescriptDocComment', 'orangeDoc', '', 'italic', '', '')
call s:c( 'typescriptCommentTodo', 'black', '', 'bold', '', '')
call s:c( 'typescriptCvsTag', 'X', '', '', '', '')
call s:c( 'typescriptDocTags', 'Z', '', '', '', '')
call s:c( 'typescriptDocSeeTag', 'Y', '', '', '', '')
call s:c( 'typescriptDocParam', 'Z', '', '', '', '')
call s:c( 'typescriptStringS', 'blueString', '', '', '', '')
call s:c( 'typescriptStringD', 'blueString', '', '', '', '')
call s:c( 'typescriptStringB', 'blueString', '', '', '', '')
call s:c( 'typescriptInterpolationDelimiter', 'Y', 'V', 'bold', '', '')
call s:c( 'typescriptRegexpString', 'Z', '', '', '', '')
call s:c( 'typescriptGlobal', 'X', 'Y', '', '', '')
call s:c( 'typescriptCharacter', 'Y', 'Z', '', '', '')
call s:c( 'typescriptPrototype', 'Y', 'Z', 'bold', '', '')
call s:c( 'typescriptConditional', 'purpleCondition', '', 'bold', '', '')
call s:c( 'typescriptBranch', 'blueAwait', '', 'bold', '', '')
call s:c( 'typescriptIdentifier', 'blueThis', '', 'bold', '', '')
call s:c( 'typescriptRepeat', 'Y', 'X', '', '', '')
call s:c( 'typescriptStatement', 'blueStatement', '', 'bold', '', '')
call s:c( 'typescriptFuncKeyword', 'redFunKeyword', '', 'bold', '', '')
call s:c( 'typescriptMessage', 'Z', '', '', '', '')
call s:c( 'typescriptDeprecated', 'Y', '', '', '', '')
call s:c( 'typescriptError', 'V', 'X', 'bold', '', '')
call s:c( 'typescriptParensError', 'X', '', '', '', '')
call s:c( 'typescriptParensErrA', 'X', '', '', '', '')
call s:c( 'typescriptParensErrB', 'Y', '', '', '', '')
call s:c( 'typescriptParensErrC', 'Z', '', '', '', '')
call s:c( 'typescriptReserved', 'purpleReserved', '', 'bold', '', '')
call s:c( 'typescriptOperator', 'blueOperator', '', '', '', '')
call s:c( 'typescriptType', 'blueType', '', 'bold', '', '')
call s:c( 'typescriptNull', 'blackNull', '', 'bold', '', '')
call s:c( 'typescriptNumber', 'orangeNumber', '', '', '', '')
call s:c( 'typescriptFloat', 'orangeNumber', '', '', '', '')
call s:c( 'typescriptDecorators', 'X', 'Y', '', '', '')
call s:c( 'typescriptBoolean', 'grayBool', '', 'bold', '', '')
call s:c( 'typescriptLabel', 'purpleLabel', '', 'bold', '', '')
call s:c( 'typescriptSpecial', 'V', '', '', '', '')
call s:c( 'typescriptSource', 'Z', '', '', '', '')
call s:c( 'typescriptGlobalObjects', 'Y', 'X', 'bold', '', '')
call s:c( 'typescriptExceptions', 'punkyException', '', 'bold', '', '')

call s:c( 'typescriptDomErrNo', 'Y', '', '', '', '')
call s:c( 'typescriptDomNodeConsts', 'Y', '', '', '', '')
" TODO not used
call s:c( 'typescriptDomElemAttrs', 'greenAttribute', 'Y', '', '', '')
call s:c( 'typescriptDomElemFuncs', 'Y', '', '', '', '')

call s:c( 'typescriptHtmlElemAttrs', 'X', '', '', '', '')
call s:c( 'typescriptHtmlElemFuncs', 'X', 'V', '', '', '')

call s:c( 'typescriptCssStyles', 'Z', '', '', '', '')

" Ajax Highlighting
call s:c( 'typescriptBrowserObjects', 'Z', '', '', '', '')

call s:c( 'typescriptDOMObjects', 'Y', 'Z', '', '', '')
call s:c( 'typescriptDOMMethods', 'X', 'Y', '', '', '')
call s:c( 'typescriptDOMProperties', 'Z', '', '', '', '')

call s:c( 'typescriptAjaxObjects', 'X', 'U', '', '', '')
call s:c( 'typescriptAjaxMethods', 'Y', 'Z', '', '', '')
call s:c( 'typescriptAjaxProperties', 'Z', '', '', '', '')

call s:c( 'typescriptFuncDef', 'U', '', '', '', '')
call s:c( 'typescriptFuncArg', 'X', '', '', '', '')
call s:c( 'typescriptFuncComma', 'blueOperator', '', '', '', '')

call s:c( 'typescriptHtmlEvents', 'greenEvent', '', '', '', '')
call s:c( 'typescriptHtmlElemProperties', 'X', '', '', '', '')

call s:c( 'typescriptEventListenerKeywords', 'X', '', '', '', '')

call s:c( 'typescriptNumber', 'orangeNumber', '', '', '', '')
call s:c( 'typescriptPropietaryObjects', 'X', '', '', '', '')
" }}}1
