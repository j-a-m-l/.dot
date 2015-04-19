" Haskell
"
" Version:      0.0.1
" Last Change:  2015 Apr 19
" Language:     Haskell
" Author:       Juan Antonio Martín Lucas <>
" URL: 
" License: MIT
" Notes: a lot TODO

let g:colors_name = "haskell"

" Colors 1{{{
let s:colors = {
\    'A'                : '#0000F0',
\    'B'                : '#F030D0',
\    'C'                : '#FF0F00',
\    'D'                : '#00F0F0',
\    'F'                : '#F0F000',
\    'G'                : '#00F080',
\    'X'                : '#00FF00',
\    'record'                : '#0095B0',
\    'spawn'                : '#0080A0',
\    'bif'                : '#005080',
\    'atomic'                : '#C080D0',
\    'integer'                : '#F0B020',
\    'list'                : '#F7B7C7',
\    'macro'                : '#F080C0',
\    'tuple'                : '#877080',
\    'operator'                : '#F04B00',
\    'modifier'                : '#305C11',
\    'binary'                : '#F05C91',
\    'bitType'                : '#3040F0',
\    'darkerComment'                : '#888888',
\    'darkerString'                : '#999999',
\    'greyString'                : '#AAAAAA',
\    'var'                : '#F08080',
\    'whiteComment'                : '#BBBBBB',
\    'redFunction'                : '#FF0F00',
\
\    'import'                : '#FF0F00',
\    }
" }}}1
" FIME
" \    'include'                : 'B0FF00',
" TODO darker comments

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

call s:c( 'hsModule', 'A', '', 'bold', '', '')
call s:c( 'hsImport', 'import', '', 'bold', '', '')
call s:c( 'hsImportMod', 'import', '', 'bold', '', '')
call s:c( 'hsInfix', 'A', '', '', '', '')
call s:c( 'hsStructure', 'A', '', '', '', '')
call s:c( 'hsStatement', 'A', '', '', '', '')
call s:c( 'hsConditional', 'A', '', '', '', '')
call s:c( 'hsSpecialChar', 'A', '', '', '', '')
call s:c( 'hsTypedef', 'A', '', '', '', '')
call s:c( 'hsVarSym', 'A', '', '', '', '')
call s:c( 'hsConSym', 'A', '', '', '', '')
call s:c( 'hsOperator', 'A', '', 'bold', '', '')
call s:c( 'hsSpecialCharError', 'C', '', 'italic', '', '')
call s:c( 'hsString', 'A', '', '', '', '')
call s:c( 'hsCharacter', 'A', '', '', '', '')
call s:c( 'hsNumber', 'A', '', '', '', '')
call s:c( 'hsFloat', 'A', '', '', '', '')
call s:c( 'hsConditional', 'A', '', '', '', '')
call s:c( 'hsLiterateComment', 'A', '', '', '', '')
call s:c( 'hsBlockComment', 'A', '', '', '', '')
call s:c( 'hsLineComment', 'A', '', '', '', '')
call s:c( 'hsComment', 'D', '', '', '', '')
call s:c( 'hsPragma', 'B', '', '', '', '')
call s:c( 'hsBoolean', 'A', '', '', '', '')

" TODO vim-haskell has an option for enabling / disabling this highlight
call s:c( 'hsType', 'A', '', '', '', '')

call s:c( 'hsMaybe', 'A', '', '', '', '')
call s:c( 'hsOrdering', 'A', '', '', '', '')
call s:c( 'hsEnumConst', 'A', '', '', '', '')
call s:c( 'hsDebug', 'X', '', 'italic', '', '')

" C preprocessor directives
" call s:c( 'cCppString', 'A', '', '', '')
" call s:c( 'cCommentStart', 'A', '', '', '')
" call s:c( 'cCommentError', 'A', '', '', '')
" call s:c( 'cCommentStartError', 'A', '', '', '')
" call s:c( 'cInclude', 'A', '', '', '')
" call s:c( 'cPreProc', 'A', '', '', '')
" call s:c( 'cDefine', 'A', '', '', '')
" call s:c( 'cIncluded', 'A', '', '', '')
" call s:c( 'cError', 'A', '', '', '')
" call s:c( 'cPreCondit', 'A', '', '', '')
" call s:c( 'cComment', 'A', '', '', '')
" call s:c( 'cCppSkip', 'A', '', '', '')
" call s:c( 'cCppOut2', 'A', '', '', '')
" call s:c( 'cCppOut', 'A', '', '', '')

" Optional highlighting
if exists("hs_highlight_delimiters")
	call s:c( 'hsDelimiter', 'B', '', '', '', '')
endif

" vim-haskell
call s:c( 'hs_hlFunctionName', 'B', '', '', '', '')
call s:c( 'hs_HighliteInfixFunctionName', 'B', '', '', '', '')
call s:c( 'hs_HlInfixOp', 'B', '', '', '', '')
call s:c( 'hs_OpFunctionName', 'B', '', '', '', '')

call s:c( 'hsModuleStartLabel', 'B', '', '', '', '')
call s:c( 'hsExportModuleLabel', 'B', '', '', '', '')
call s:c( 'hsModuleWhereLabel', 'B', '', '', '', '')
call s:c( 'hsModuleName', 'B', '', '', '', '')

call s:c( 'hsImportIllegal', 'B', '', '', '', '')
call s:c( 'hsAsLabel', 'B', '', '', '', '')
call s:c( 'hsHidingLabel', 'B', '', '', '', '')
call s:c( 'hsImportLabel', 'B', '', '', '', '')
call s:c( 'hsImportMod', 'B', '', '', '', '')
call s:c( 'hsPackageString', 'B', '', '', '', '')

call s:c( 'hsModuleCommentA', 'B', '', '', '', '')
call s:c( 'hsModuleCommentB', 'B', '', '', '', '')
call s:c( 'hsCommentTodo', 'B', '', '', '', '')

if exists("hs_highlight_types")
call s:c(i'Link', 'B', '', '', '', '')
call s:c(i'Link', 'B', '', '', '', '')
endif

call s:c( 'hs_TypeOp', 'B', '', '', '', '')

call s:c( 'hsFFIString', 'B', '', '', '', '')
call s:c( 'hsFFIForeign', 'B', '', '', '', '')
call s:c( 'hsFFIImportExport', 'B', '', '', '', '')
call s:c( 'hsFFICallConvention', 'B', '', '', '', '')
call s:c( 'hsFFISafety', 'B', '', '', '', '')

call s:c( 'hsTHIDTopLevel', 'B', '', '', '', '')
call s:c( 'hsTHTopLevelName', 'B', '', '', '', '')

call s:c( 'hsQQVarID', 'B', '', '', '', '')
call s:c( 'hsQQVarIDNew', 'B', '', '', '', '')
call s:c( 'hsQQEnd', 'B', '', '', '', '')
call s:c( 'hsQQContent', 'B', '', '', '', '')
