" Vim color file
"
" Author: Juan Antonio Martín Lucas <>
" Version: 0.5.8
" Last Change: 2016 Feb 13
" URL: 
" License: MIT
" Notes: Rust oriented color theme

let g:colors_name = "the_new_decay"
" corrosive
" oxidized
" rusty_style
" corrosive
" corroded
" the_decay
" rot_style
" the_new_decay
" the_modern_decay

" Colors 1{{{
let s:colors = {
		\    'blackNull'        : '#111111',
	\    'purpleMacro'       : '#625BA9',
		\    'blueOperator'     : '#458986',
		\    'blueParen'        : '#097788',
	\    'blueMod'      : '#82ABF9',
	\    'blueSeparator'        : '#A2CBF9',
	\    'blueFunction'       : '#327BD9',
	\    'blueTrait'         : '#6092F8',
	\    'blueIdentifier'         : '#215096',
	\    'blueType'         : '#2190C6',
	\    'brownString'      : '#A97758',
	\    'brownChar'        : '#D07455',
	\    'blackBool'        : '#113111',
	\    'grayFloat'         : '#ABAAA2',
	\    'grayNumber'         : '#7B7A72',
	\    'greenFloat'         : '#35D598',
	\    'greenNumber'    : '#059926',
	\    'grayComment'    : '#9B9A92',
	\    'grayDoc'    : '#8B8A82',
	\    'grayTodo'    : '#6B6A62',
		\    'orangeDoc'        : '#F6C179',
	\    'orangeStorage'      : '#DF8129',
	\    'orangeKeyword'      : '#CF5129',
	\    'orangeConditional'    : '#F6B139',
		\    'orangeNumber'     : '#FA6900',
		\    'pinkStatement'    : '#DD0060',
		\    'purpleCondition'  : '#2C13DA',
	\    'pinkOperator'    : '#F4A0B0',
		\    'punkyException'   : '#F440D0',
		\    'purpleGlobal'     : '#D44090',
		\    'purpleLoop'       : '#5C43FA',
		\    'purpleRegex'      : '#5555CC',
		\    'purpleSpecial'    : '#9595CC',
		\    'redError'         : '#FF2424',
	\    'redFunction'           : '#FF806B',
		\    'redFunKeyword'    : '#FE4365',
		\    'redReserved'      : '#BE1325',
		\    'X'                : '#00FF00',
        \    'XX'                : '#A0F000',
		\    'Y'                : '#FFFF00',
        \    'YY'                : '#7F3F00',
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

" Default highlighting 1{{{
" call s:c( 'rustDecNumber', 'X', '', '', '', '')
" call s:c( 'rustHexNumber', 'X', '', '', '', '')
" call s:c( 'rustOctNumber', 'X', '', '', '', '')
" call s:c( 'rustBinNumber', 'X', '', '', '', '')
call s:c( 'rustIdentifierPrime', 'YY', '', '', '', '')
call s:c( 'rustTrait', 'blueTrait', '', 'bold', '', '') " String Vec
call s:c( 'rustDeriveTrait', 'YY', '', 'bold', '', '')

call s:c( 'rustMacroRepeatCount', 'X', '', '', '', '')
call s:c( 'rustMacroRepeatDelimiters', 'X', '', '', '', '')
call s:c( 'rustMacroVariable', 'X', '', '', '', '')

call s:c( 'rustSigil', 'Z', '', 'bold', '', '') " * &
call s:c( 'rustEscape', 'X', '', '', '', '')
call s:c( 'rustEscapeUnicode', 'X', '', '', '', '')
call s:c( 'rustEscapeError', 'X', '', '', '', '')
call s:c( 'rustStringContinuation', 'Z', '', '', '', '')
call s:c( 'rustString', 'brownString', '', '', '', '')
call s:c( 'rustCharacterInvalid', 'Y', '', '', '', '')
call s:c( 'rustCharacterInvalidUnicode', 'Y', '', '', '', '')
call s:c( 'rustCharacter', 'brownChar', '', '', '', '')

call s:c( 'rustNumber', 'greenNumber', '', '', '', '')
call s:c( 'rustFloat', 'greenFloat', '', '', '', '')

call s:c( 'rustBoolean', 'blackBool', '', 'bold', '', '')
call s:c( 'rustEnum', 'YY', '', '', '', '')
call s:c( 'rustEnumVariant', 'Z', '', '', '', '') " Some None
call s:c( 'rustConstant', 'Z', '', 'bold', '', '') " TODO
call s:c( 'rustSelf', 'Z', '', 'bold', '', '')
call s:c( 'rustOperator', 'pinkOperator', '', '', '', '')
call s:c( 'rustKeyword', 'orangeKeyword', '', '', '', '')
call s:c( 'rustReservedKeyword', 'Z', '', 'bold', '', '')

call s:c( 'rustConditional', 'orangeConditional', '', '', '', '') " match
call s:c( 'rustIdentifier', 'blueIdentifier', '', '', '', '')
call s:c( 'rustCapsIdent', 'Y', '', '', '', '')

call s:c( 'rustModPath', 'blueMod', '', '', '', '')
call s:c( 'rustModPathSep', 'blueSeparator', '', '', '', '')

call s:c( 'rustFunction', '', '', 'bold', '', '')
call s:c( 'rustFuncName', 'redFunction', '', 'bold', '', '')
call s:c( 'rustFuncCall', 'blueFunction', '', '', '', '')
call s:c( 'rustShebang', 'Y', '', '', '', '')

call s:c( 'rustCommentLine', 'grayComment', '', 'italic', '', '')
call s:c( 'rustCommentLineDoc', 'grayDoc', '', '', '', '')
call s:c( 'rustCommentBlock', 'grayComment', '', '', '', '')
call s:c( 'rustCommentBlockDoc', 'grayDoc', '', '', '', '')
call s:c( 'rustTodo', 'grayTodo', '', 'bold', '', '')

call s:c( 'rustAssert', 'X', '', '', '', '')
call s:c( 'rustPanic', 'X', '', '', '', '')
call s:c( 'rustMacro', 'purpleMacro', '', 'bold', '', '')
call s:c( 'rustType', 'blueType', '', '', '', '') " Self, i32, f64 ...
call s:c( 'rustAttribute', 'Z', '', 'bold', '', '')
call s:c( 'rustDeriving', 'Z', '', '', '', '')
call s:c( 'rustStorage', 'orangeStorage', '', '', '', '') " const mut 
call s:c( 'rustObsoleteStorage', 'X', '', '', '', '')
call s:c( 'rustLifetime', 'YY', '', '', '', '')
call s:c( 'rustInvalidBareKeyword', 'X', '', '', '', '')
call s:c( 'rustExternCrate', 'X', '', '', '', '')
call s:c( 'rustObsoleteExternMod', 'X', '', '', '', '')
call s:c( 'rustBoxPlacementParens', 'Z', '', '', '', '')
call s:c( 'rustBoxPlacementExpr', 'X', '', '', '', '')
" TODO "_"
" }}}1
