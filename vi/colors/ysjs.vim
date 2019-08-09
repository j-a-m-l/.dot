" Vim color file
"
" Author: Juan Antonio Martín Lucas <>
" Version: 0.8.1
" Last Change: 2016 Jan 11
" URL: 
" License: MIT
" Notes: JavaScript oriented color theme
"  - Does not include styles for https://github.com/jelera/vim-javascript-syntax
"  - Does not include styles for https://github.com/othree/yajs.vim
"  - Does not include styles for https://github.com/pangloss/vim-javascript

" TODO change braces, bracket, etc colors
" Previous state (last change was 2013 Feb 23): punkyException : #F440D0

let g:colors_name = "ysjs"

" Colors 1{{{
let s:colors = {
    \    'black'            : '#000000',
    \    'blackNull'        : '#111111',
    \    'blueBranch'       : '#525BA9',
    \    'blueCondition'    : '#1C13FA',
    \    'blueOperator'     : '#458986',
    \    'blueGlobalObject' : '#4466F9',
    \    'blueParen'        : '#097788',
    \    'bluePrototype'    : '#0495BF',
    \    'blueStatement'    : '#222BA9',
    \    'blueSpecial'      : '#A2CBF9',
    \    'blueLabel'        : '#B2CBF9',
    \    'blueString'       : '#528BF9',
    \    'blueThis'         : '#0082F8',
    \    'blueType'         : '#215096',
    \    'brownBrace'       : '#997788',
    \    'brownConsole'     : '#D07455',
    \    'grayBool'         : '#444444',
    \    'grayBracket'      : '#3B3A32',
    \    'grayPunc'         : '#ABAAA2',
    \    'greenKey'         : '#15A578',
    \    'greenOperator'    : '#45B986',
    \    'orangeComment'    : '#F9D0B8',
    \    'orangeDoc'        : '#F6C179',
    \    'orangeNoParam'    : '#C6A159',
    \    'orangeNumber'     : '#FA6900',
    \    'orangeParam'      : '#DF8129',
    \    'pinkStatement'    : '#DD0060',
    \    'purpleCondition'  : '#2C13DA',
    \    'pinkException'    : '#F490D0',
    \    'punkyException'   : '#E490F0',
    \    'purpleGlobal'     : '#D44090',
    \    'purpleLoop'       : '#5C43FA',
    \    'purpleRegex'      : '#5555CC',
    \    'purpleSpecial'    : '#9595CC',
    \    'redError'         : '#FF2424',
    \    'redFun'           : '#FF106B',
    \    'redFunKeyword'    : '#FE4365',
    \    'redReserved'      : '#BE1325',
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

" Default highlighting 1{{{
call s:c( 'javaScriptBoolean'          , 'grayBool'        , '' , 'bold' , '' , '')
call s:c( 'javaScriptBraces'           , 'brownBrace'      , '' , ''     , '' , '')
call s:c( 'javaScriptBranch'           , 'blueBranch'      , '' , 'bold' , '' , '')
call s:c( 'javaScriptComment'          , 'orangeDoc'       , '' , ''     , '' , '')
call s:c( 'javaScriptCommentTodo'      , 'orangeDoc'       , '' , 'bold' , '' , '')
call s:c( 'javaScriptConditional'      , 'purpleCondition' , '' , 'bold' , '' , '')
call s:c( 'javaScriptDeprecated'       , 'redReserved'     , '' , ''     , '' , '')
call s:c( 'javaScriptException'        , 'pinkException'   , '' , 'bold' , '' , '')
call s:c( 'javaScriptFunction'         , 'redFunKeyword'   , '' , 'bold' , '' , '')
call s:c( 'javaScriptGlobal'           , 'purpleGlobal'    , '' , '' , '' , '')
call s:c( 'javaScriptIdentifier'       , 'blueThis'        , '' , 'bold' , '' , '')
call s:c( 'javaScriptLabel'            , 'blueBranch'      , '' , ''     , '' , '')
call s:c( 'javaScriptLineComment'      , 'orangeComment'   , '' , ''     , '' , '')
call s:c( 'javaScriptMember'           , 'purpleGlobal'    , '' , '' , '' , '')
call s:c( 'javaScriptMessage'          , 'purpleGlobal'    , '' , '' , '' , '')
call s:c( 'javaScriptNull'             , 'blackNull'       , '' , 'bold' , '' , '')
call s:c( 'javaScriptNumber'           , 'orangeNumber'    , '' , ''     , '' , '')
call s:c( 'javaScriptOperator'         , 'blueOperator'    , '' , ''     , '' , '')
call s:c( 'javaScriptRegexpString'     , 'purpleRegex'     , '' , ''     , '' , '')
call s:c( 'javaScriptRepeat'           , 'purpleLoop'      , '' , 'bold' , '' , '')
call s:c( 'javaScriptReserved'         , 'redReserved'     , '' , ''     , '' , '')
call s:c( 'javaScriptSpecial'          , 'blueSpecial'     , '' , ''     , '' , '')
call s:c( 'javaScriptSpecialCharacter' , 'blueSpecial'     , '' , ''     , '' , '')
call s:c( 'javaScriptStatement'        , 'blueStatement'   , '' , 'bold' , '' , '')
call s:c( 'javaScriptStringD'          , 'blueString'      , '' , ''     , '' , '')
call s:c( 'javaScriptStringS'          , 'blueString'      , '' , ''     , '' , '')
call s:c( 'javaScriptType'             , 'blueType'        , '' , 'bold' , '' , '')

" Don't highlight anything
call s:c( 'javaScriptCharacter'        , 'Y'               , '' , 'bold' , '' , '')
call s:c( 'javaScriptError'            , 'X'               , '' , 'bold' , '' , '')
call s:c( 'javaScriptConstant'         , 'Y'               , '' , 'bold' , '' , '')
call s:c( 'javaScriptDebug'            , 'Y'               , '' , 'bold' , '' , '')
call s:c( 'javaScrParenError'          , 'Z'        , '' , 'bold' , '' , '')
" }}}1

" FIXME brackets
" FIXME last paren
" TODO AMD
" TODO .
" TODO darker comments

" FIXME ? selector : como key: 'balabla'

" DONE:
" FIXME throw, try
" TODO if != return
" FIXME switch + case || Label != key
" TODO new keyword
" TODO in keyword
" FIXME prototype
" FIXME var keyword / this
" TODO !
" TODO , & ;
" TODO :

" vim-javascript 1{{{
call s:c( 'javaScript'                  , 'black'            , '' , ''     , '' , '')
call s:c( 'javaScriptEnvComment'        , 'blackNull'        , '' , 'bold' , '' , '')
call s:c( 'javaScriptDocComment'        , 'orangeDoc'        , '' , ''     , '' , '')
call s:c( 'javaScriptCvsTag'            , 'orangeDoc'        , '' , 'bold' , '' , '')
call s:c( 'javaScriptDocTags'           , 'orangeDoc'        , '' , 'bold' , '' , '')
call s:c( 'javaScriptDocSeeTag'         , 'orangeDoc'        , '' , 'bold' , '' , '')
call s:c( 'javaScriptDocType'           , 'orangeNoParam'    , '' , ''     , '' , '')
call s:c( 'javaScriptDocTypeNoParam'    , 'orangeNoParam'    , '' , ''     , '' , '')
call s:c( 'javaScriptDocParam'          , 'orangeParam'      , '' , ''     , '' , '')
call s:c( 'javaScriptTernaryIfOperator' , 'blueCondition'    , '' , 'bold' , '' , '') " TODO
call s:c( 'javaScriptRegexpCharClass'   , 'purpleSpecial'    , '' , ''     , '' , '')
call s:c( 'javaScriptPrototype'         , 'bluePrototype'    , '' , ''     , '' , '')
call s:c( 'javaScriptParensError'       , 'Y'         , 'black' , ''     , '' , '')
" ]
call s:c( 'javaScriptParensErrA'        , 'redError'         , 'black' , 'bold'     , '' , '')
" )
call s:c( 'javaScriptParensErrB'        , 'redError'         , 'black' , 'bold'     , '' , '')
" }
call s:c( 'javaScriptParensErrC'        , 'redError'         , 'black' , 'bold'     , '' , '')
call s:c( 'javaScriptThis'              , 'blueThis'         , '' , 'bold' , '' , '')
call s:c( 'javaScriptFloat'             , 'orangeNumber'     , '' , ''     , '' , '')
call s:c( 'javaScriptSource'            , 'Z'                , '' , ''     , '' , '')
call s:c( 'javaScriptCommonJS'          , 'blueGlobalObject' , '' , ''     , '' , '')
call s:c( 'javaScriptGlobalObjects'     , 'blueGlobalObject' , '' , ''     , '' , '')
call s:c( 'javaScriptExceptions'        , 'punkyException'   , '' , 'bold' , '' , '') " TODO
call s:c( 'javaScriptDomErrNo'          , 'X'                , '' , ''     , '' , '')
call s:c( 'javaScriptDomNodeConsts'     , 'Y'                , '' , ''     , '' , '')
call s:c( 'javaScriptDomElemAttrs'      , 'Z'                , '' , ''     , '' , '')
call s:c( 'javaScriptDomElemFuncs'      , 'X'                , '' , ''     , '' , '')
call s:c( 'javaScriptHtmlEvents'        , 'Y'                , '' , ''     , '' , '')
call s:c( 'javaScriptHtmlElemAttrs'     , 'Z'                , '' , ''     , '' , '')
call s:c( 'javaScriptHtmlElemFuncs'     , 'Y'                , '' , ''     , '' , '')
call s:c( 'javaScriptCssStyles'         , 'Y'                , '' , ''     , '' , '')
call s:c( 'javaScriptFuncName'          , 'redFun'           , '' , ''     , '' , '')
call s:c( 'javaScriptOpAssign'          , 'blueOperator'     , '' , ''     , '' , '')
call s:c( 'javaScriptBracket'           , 'grayBracket'      , '' , ''     , '' , '')
call s:c( 'javaScriptParen'             , 'blueParen'        , '' , ''     , '' , '')
call s:c( 'javaScriptBlock'             , 'brownBrace'       , '' , ''     , '' , '')
call s:c( 'javaScriptObjectKey'         , 'greenKey'         , '' , ''     , '' , '')
call s:c( 'javaScriptNew'               , 'blueThis'         , '' , 'bold' , '' , '')
" Override default TODO
call s:c( 'javaScriptIdentifier'        , 'blueType'        , '' , 'bold'  , '' , '')
call s:c( 'javaScriptExclamation'       ,'black','','bold','','') " TODO
call s:c( 'javaScriptDot'         ,'redFun'       , '' , ''      , '' , '') " TODO
call s:c( 'javaScriptComma'         ,'grayPunc'       , '' , ''      , '' , '')
call s:c( 'javaScriptSemiColon'         ,'grayPunc'       , '' , ''      , '' , '')
call s:c( 'javaScriptColon'         ,'grayPunc'       , '' , ''      , '' , '') " TODO
call s:c( 'javaScriptConsole'         ,'brownConsole'       , '' , ''      , '' , '') " TODO
" }}}1

" vim-javascript-syntax 1{{{
call s:c( 'javaScriptOpSymbols','blueOperator','','','','')
call s:c( 'javaScriptLogicSymbols','greenOperator','','','','')
call s:c( 'javaScriptParens','blueParen','','','','')
call s:c( 'javaScriptFuncKeyword','redFunKeyword','','bold','','')

" Ajax Highlighting
call s:c( 'javaScriptBrowserObjects','purpleGlobal','','','','')

call s:c( 'javaScriptDOMObjects','Y','','','','')
call s:c( 'javaScriptDOMMethods','X','','','','')
call s:c( 'javaScriptDOMProperties','X','','','','')

call s:c( 'javaScriptAjaxObjects','Y','','','','')
call s:c( 'javaScriptAjaxMethods','Z','','','','')
call s:c( 'javaScriptAjaxProperties','Z','','','','')

call s:c( 'javaScriptFuncDef','redFun','','','','')
call s:c( 'javaScriptFuncArg','redFun','','','','')
call s:c( 'javaScriptFuncComma','redFun','','','','')

call s:c( 'javaScriptHtmlElemProperties','Y','','','','')

call s:c( 'javaScriptEventListenerKeywords','Y','','','','')

call s:c( 'javaScriptPropietaryObjects','X','','','','')
call s:c( 'javaScriptPropietaryMethods','X','','','','')
" }}}1

" Míos
" hi javaScriptArguments guifg=#0082F8 gui=bold
" hi javaScriptProperty guifg=#447699
"hi javaScriptMethod guifg=#F46699
