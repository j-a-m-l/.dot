" JavaScript {{{1
" Color por defecto
hi javaScript  guifg=#000000 
" new
hi javaScriptOperator guifg=#4F8699
hi javaScriptNull guifg=#111111 gui=bold
hi javaScriptFunction  guifg=#FE4365 gui=bold 
" return break continue switch case EL color es demasiado débil para su
" función; o más claro y para comentarios, o negrita o algo así
hi javaScriptBranch guifg=#458986
" Property (property: value) TODO El color está bien, pero me parece a
" veces que es más de valor que de etiqueta... uhmm, como es bonito, lo
" puedo dejar y si no me acostumbro, pues para otra cosa
hi javaScriptLabel   guifg=#15A578
hi javaScriptPrototype guifg=#14A5FF
hi javaScriptComment guifg=#F9D0B8 
hi javaScriptDocTags guifg=#F6C179 gui=bold
hi javaScriptDocComment guifg=#F6C179
hi javaScriptRegexpString guifg=#5555CC
hi javaScriptBoolean guifg=#0E592C              gui=bold
hi javaScriptConditional guifg=#2C13DA gui=bold
hi javaScriptRepeat guifg=#5C43FA gui=bold
hi javaScriptCommentTodo guifg=#F6C179 gui=bold
hi javaScriptNumber    guifg=#FA6900 
" Cadenas con comillas dobles TODO Ligera diferenciación
hi javaScriptStringD guifg=#528BF9
" Cadenas con comillas simples
hi javaScriptStringS guifg=#528BF9
" Paréntesis
hi javaScriptParens    guifg=#097788 
" Llaves
hi javaScriptBraces    guifg=#997788 
" Corchetes TODO Sólo afecta al primer corchete
hi javaScriptBracket    guifg=#3B3A32

hi javaScriptExpression        guifg=#FF0FF0 
hi javaScriptDocParam guifg=#00FF00
hi javaScriptSpecial   guifg=#F3500D 
" throw
hi javaScriptStatement guifg=#FF00D0 gui=bold
hi javaScriptIdentifier guifg=#A434FF
" this, vars, arguments
hi javaScriptReserved  guifg=#20D820 
hi javaScriptMessage   guifg=#24DFA7 
hi javaScriptLineComment              guifg=#F9D0B8
hi javaScriptCommentSkip              guifg=#0000FF 
hi javaScriptSpecialCharacter  guifg=#44F5d0 
hi javaScriptException        guifg=#0000FF 
hi javaScriptDeprecated               guifg=#0000FF 
hi javaScriptType guifg=#215096 gui=bold
hi javaScriptGlobalObjects guifg=#4466F9
" Nombre, parámetros y paréntesis
hi javaScriptFuncName guifg=#FF106B 
" Cambiar el color del contenido de una función
" hi javaScriptFuncBlock guifg=#C04455
hi javaScriptOpAssign guifg=#3BA5FF
" location, event, document
hi javaScriptMember guifg=#44AFAF gui=bold
" window, self, parent, top
hi javaScriptGlobal guifg=#04F0C0 gui=bold

"hi javaScriptCvsTag
"hi javaScriptDocSeeTag
"hi javaScriptSource
"hi javaScriptFutureKeys
"hi javaScriptDomErrNo
"hi javaScriptDomNodeConsts
"hi javaScriptHtmlEvents
"hi javaScriptParensErrB
"hi javaScriptParensErrC
"hi javaScriptParensErrA
"hi javaScriptParensError

"hi javascriptRailsClass               guifg=#0000FF 
"hi javascriptRailsFunction            guifg=#0000FF 

" Míos TODO Habría que perfeccionar antes la sintaxis... quizá una como la de Java funcione
hi javaScriptThis guifg=#0082F8 gui=bold
hi javaScriptConsole guifg=#D07455 gui=bold
hi javaScriptProperty guifg=#447699
"hi javaScriptMethod guifg=#F46699

" jQuery {{{2 FIXME No se están viendo, aunque sí remarca 'jQuery', pero en
" otro color
hi jQuery          guifg=#D04455 gui=bold
hi jCore           guifg=#44A455
hi jAttributes     guifg=#44F455
hi jTraversing     guifg=#444955
hi jManipulation   guifg=#444455
hi jCSS            guifg=#446455
hi jEvents         guifg=#934D55
hi jEffects        guifg=#440455
hi jAjax           guifg=#904595
hi jUtilities      guifg=#400000
hi jId             guifg=#B4D455
hi jClass          guifg=#4444C5
hi jOperators      guifg=#E84755
hi jBasicFilters   guifg=#4DA295
hi jContentFilters guifg=#458455
hi jVisibility     guifg=#444405
hi jChildFilters   guifg=#449235
hi jForms          guifg=#4404F5
hi jFormFilters    guifg=#4494D5
" }}}2
" }}}1
