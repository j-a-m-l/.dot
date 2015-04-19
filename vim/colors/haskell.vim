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
\
\    'comment'                : '#BBBBBB',
\    'function'                : '#7700DD',
\    'import'                : '#FF0F00',
\    'string'                : '#9999FF',
\    'statement'                : '#220066',
\    'structure'                : '#550099',
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
call s:c( 'hsStructure', 'structure', '', 'bold', '', '')
call s:c( 'hsStatement', 'statement', '', 'bold', '', '')
call s:c( 'hsConditional', 'A', '', '', '', '')
call s:c( 'hsSpecialChar', 'A', '', '', '', '')
call s:c( 'hsTypedef', 'D', '', '', '', '')
call s:c( 'hsVarSym', 'A', '', '', '', '')
call s:c( 'hsConSym', 'F', '', '', '', '')
call s:c( 'hsOperator', 'X', '', 'bold', '', '')
call s:c( 'hsSpecialCharError', 'C', '', 'italic', '', '')
call s:c( 'hsString', 'string', '', 'italic', '', '')
call s:c( 'hsCharacter', 'A', '', '', '', '')
call s:c( 'hsNumber', 'A', '', '', '', '')
call s:c( 'hsFloat', 'A', '', '', '', '')
call s:c( 'hsConditional', 'A', '', '', '', '')
" TODO comment color variations
call s:c( 'hsLiterateComment', 'comment', '', '', '', '')
call s:c( 'hsBlockComment', 'comment', '', '', '', '')
call s:c( 'hsLineComment', 'comment', '', '', '', '')
call s:c( 'hsComment', 'comment', '', '', '', '')
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

"
" vim-haskell
"
" TODO test theme without this plugin

call s:c( 'hs_hlFunctionName', 'function', '', 'bold', '', '')
call s:c( 'hs_HighliteInfixFunctionName', 'B', '', '', '', '')
call s:c( 'hs_HlInfixOp', 'B', '', '', '', '')
call s:c( 'hs_OpFunctionName', 'B', '', '', '', '')

call s:c( 'hsModuleStartLabel', 'B', '', '', '', '')
call s:c( 'hsExportModuleLabel', 'B', '', '', '', '')
call s:c( 'hsModuleWhereLabel', 'B', '', '', '', '')
call s:c( 'hsModuleName', 'B', '', '', '', '')

" TODO import color variants
call s:c( 'hsImportIllegal', 'B', '', '', '', '')
call s:c( 'hsAsLabel', 'import', '', 'bold', '', '')
call s:c( 'hsHidingLabel', 'import', '', 'bold', '', '')
call s:c( 'hsImportLabel', 'import', '', 'bold', '', '')
call s:c( 'hsImportMod', 'import', '', 'bold', '', '')
call s:c( 'hsPackageString', 'B', '', '', '', '')

call s:c( 'hsModuleCommentA', 'comment', '', '', '', '')
call s:c( 'hsModuleCommentB', 'comment', '', '', '', '')
call s:c( 'hsCommentTodo', 'comment', '', 'bold', '', '')

if exists("hs_highlight_types")
	call s:c('hsDelimTypeExport', 'B', '', '', '', '')
	call s:c('hsType', 'B', '', '', '', '')
endif

call s:c( 'hs_TypeOp', 'B', '', '', '', '')

" TODO

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
