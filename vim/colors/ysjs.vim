" Vim color file
"
" Author: Juan Antonio Martín Lucas 
"
" Note: JavaScript, HTML, CSS, Ruby, PHP, Vim, SASS, Cucumber, Sh
" Plugins: NERDTree, Project
"
let g:colors_name="ysjs"

" TODO Usar variables para nombrar a los colores

hi clear
set background=light

" Common {{{1
hi CursorLine                    guibg=#F3F2DB
hi CursorColumn                  guibg=#3E3D32
hi LineNr          guifg=#FFFFFF guibg=#3E3D32
hi NonText         guifg=#FFFFFF guibg=#3E3D32
hi Cursor          guifg=#FFFFDD guibg=#001122
hi Normal          guifg=#3B3A32 guibg=#FDFCF6
hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000
hi Search          guifg=#FFFFFF guibg=#655354
hi IncSearch       guifg=#FD9922 guibg=#000000
hi StatusLine      guifg=#88DDFF guibg=fg
hi StatusLineNC    guifg=#F2FFFF guibg=#080808
" TODO"
hi FoldColumn      guifg=#3B3A32 guibg=#DBDBFB
hi Folded          guifg=#3B3A32 guibg=#DBDBFB
hi SignColumn      guifg=#A6E22E guibg=#3E3D32

" Comunes que podrían variar algún día
hi Directory       guifg=#A6E22E               gui=bold
" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi MatchParen      guifg=#0F5F00 guibg=#FD971F gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74


" Half-random colors
hi Boolean         guifg=#AE81FF
hi Character       guifg=#964BA4
hi Number          guifg=#c48410
hi String          guifg=#76AB34
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F

hi Error           guifg=#960050 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi Function        guifg=#0E592C               gui=bold
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg

hi Keyword         guifg=#2C13CA               gui=bold
hi Label           guifg=#B67B74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi Operator        guifg=#F92672

hi PreCondit       guifg=#76922E               gui=bold
hi PreProc         guifg=#06E22E
hi Question        guifg=#0609EF
hi Repeat          guifg=#F92672               gui=bold
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi Special         guifg=#6609EF guibg=bg      gui=italic
hi SpecialKey      guifg=#888A85               gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D95F
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#EF5939
hi Todo            guifg=#BBBBBB guibg=bg      gui=bold

hi Typedef         guifg=#6689EF
hi Type            guifg=#66593F               gui=none
hi Underlined      guifg=#808080               gui=underline

" El color (74C291) quedaba bien, pero era demasiado parecido al de JSLabel, por lo
" que no se distinguía bien; éste otro, que es más pistachito, está dentro de las tonalidades verdes y azules, pero aún se parece demasiado TODO
hi Comment         guifg=#F9D0B8
"79c179
"8AC18A
" }}}1

" HTML {{{1
" Nombre de los elementos que no son 'del todo' HTML, como de plantillas y algunos atributos (si no está htmlArg)
hi htmlTag guifg=#F65D9F gui=bold
" Nombre de los elementos HTML, los = de los atributos
hi htmlTagName  guifg=#265D9F gui=bold
" Nombre de los atributos
hi htmlArg     guifg=#F5500D 
" Valores de los atributos
hi htmlString  guifg=#BF9444 
hi htmlValue   guifg=#405F00 
" Inicio <...>
hi htmlTag      guifg=#409000        
" Fin </...>
hi htmlEndTag   guifg=#409898        

" Etiquetas de script, style
hi htmlSpecialTagName  guifg=#00CDA0 gui=bold

hi htmlLink    guifg=#9060B0 gui=italic,underline
hi htmlTagN    guifg=#F00F00 
hi htmlSpecialChar     guifg=#8D6333 gui=italic
" atributos de eventos (onClick, etc.)
hi htmlEvent   guifg=#DD4F00 

hi htmlEventTag        guifg=#000FFF 
hi htmlPreProcAttrName guifg=#440000 

hi htmlPreAttr        guifg=#0550FF 
hi htmlPreProc        guifg=#00F0FF 

hi htmlPreStmt        guifg=#F000FF 

"hi htmlError          guifg=#0000FF 
"hi htmlTagError               guifg=#0000FF 
hi htmlCommentPart            guifg=#999999 
"hi htmlCommentError           guifg=#0000FF 
hi htmlComment        guifg=#CCCCCC 
"hi htmlPreError               guifg=#0000FF 
"hi htmlPreProcAttrError               guifg=#0000FF 
"hi htmlScriptTag              guifg=#0000FF 
"hi htmlEventSQ        guifg=#0000FF 
"hi htmlEventDQ        guifg=#0000FF 
"hi htmlBoldUnderline          guifg=#0000FF 
"hi htmlBoldItalic             guifg=#0000FF 
"hi htmlBold           guifg=#0000FF 
"hi htmlBoldUnderlineItalic            guifg=#0000FF 
"hi htmlBoldItalicUnderline            guifg=#0000FF 
"hi htmlUnderlineBold          guifg=#0000FF 
"hi htmlUnderlineItalic        guifg=#0000FF 
"hi htmlUnderline              guifg=#0000FF 
"hi htmlUnderlineBoldItalic            guifg=#0000FF 
"hi htmlUnderlineItalicBold            guifg=#0000FF 
"hi htmlItalicBold             guifg=#0000FF 
"hi htmlItalicUnderline        guifg=#0000FF 
"hi htmlItalic         guifg=#0000FF 
"hi htmlItalicBoldUnderline            guifg=#0000FF 
"hi htmlItalicUnderlineBold            guifg=#0000FF 
"hi htmlH1       ctermfg=25      guifg=25        
"hi htmlH2             guifg=#0000FF 
"hi htmlH3             guifg=#0000FF 
"hi htmlH4             guifg=#0000FF 
"hi htmlH5             guifg=#0000FF 
"hi htmlH6             guifg=#0000FF 
hi htmlTitle          guifg=#0000FF gui=bold
hi htmlHead           guifg=#0000FF gui=bold

hi htmlCssDefinition   guifg=#00F000 
hi htmlCssStyleComment guifg=#F000F0 
" Etiqueta style
hi cssStyle           guifg=#044446
" }}}1

" CSS {{{1
" Números (si van con .px no funciona)
hi cssValueNumber      guifg=#FF0000 
" {}
hi cssPseudoClass      guifg=#FFFF00 
" Sólo #id
hi cssIdentifier              guifg=#D40000 gui=bold
hi cssClassName         guifg=#FC4545 gui=bold
" Nombre de etiqueta
hi cssTagName         guifg=#F26700 gui=bold

hi cssDefinition       guifg=#4909FF 
" Para las comas
hi cssMediaComma       guifg=#F0F000 

hi cssSelectorOp              guifg=#0290FF 
hi cssSelectorOp2             guifg=#09093F 
"hi cssUnicodeEscape           guifg=#0000FF 
hi cssStringQ         guifg=#F000FF 
hi cssStringQQ        guifg=#49F03F 
hi cssMediaType               guifg=#00F0FF 
hi cssMedia           guifg=#0090FF 
hi cssMediaBlock              guifg=#0000FF 
hi cssBraces          guifg=#0000FF
hi cssError           guifg=#000000 guibg=#FF0000 
"hi cssComment         guifg=#0000FF 
hi cssURL             guifg=#0000FF gui=italic
"hi cssValueInteger            guifg=#000099 
" Para px, % y em
hi cssValueLength             guifg=#4444FF 
hi cssValueAngle              guifg=#F000FF 
hi cssValueTime               guifg=#0FF0FF 
hi cssValueFrequency          guifg=#CF0FFF 
" Fuentes
hi cssFontDescriptor          guifg=#FF559F 
hi cssFontProp        guifg=#BF659F 
hi cssFontAttr        guifg=#FF008F gui=italic
"hi cssFontDescriptorProp              guifg=#0000FF 
"hi cssFontDescriptorFunction          guifg=#0000FF 
hi cssCommonAttr              guifg=#0990FF gui=italic
"hi cssUnicodeRange            guifg=#0000FF 
"hi cssColor           guifg=#0000FF 
hi cssFunction        guifg=#0000FF 
hi cssImportant               guifg=#9000C4
hi cssColorProp               guifg=#C000FF 
" Con el plugin colorizer no hace falta
"hi cssColorAttr               guifg=#0000FF 
hi cssTextProp        guifg=#1166D0
hi cssTextAttr        guifg=#3388F0 gui=italic
" Sólo para propiedades de caja
hi cssBoxProp         guifg=#49999B
hi cssBoxAttr         guifg=#6BBBBD gui=italic
"hi cssGeneratedContentProp            guifg=#0000FF 
"hi cssGeneratedContentAttr            guifg=#0000FF 
hi cssAurlAttr        guifg=#0000FF 
hi cssPagingProp              guifg=#0000FF 
hi cssPagingAttr              guifg=#0000FF 
hi cssUIProp          guifg=#0000FF 
hi cssUIAttr          guifg=#0000FF 
" display
hi cssRenderProp              guifg=#2B7700 
hi cssRenderAttr              guifg=#4D9900 gui=italic
hi cssAuralProp               guifg=#0000FF 
hi cssTableProp               guifg=#0000FF 
hi cssTableAttr               guifg=#0000FF gui=italic
"hi cssInclude         guifg=#0000FF 
"hi cssBraceError              guifg=#0000FF 
" hover
hi cssPseudoClassId           guifg=#B040AF 
hi cssPseudoClassLang         guifg=#0000FF 
"hi cssSpecialCharQQ           guifg=#0000FF 
"hi cssSpecialCharQ            guifg=#0000FF 
" }}}1

" Sass {{{1
hi def link sassCssComment              sassComment
hi def link sassComment                 Comment
hi def link sassDefault                 cssImportant
" Color que destaca mucho #F545D6
hi sassVariable guifg=#F545D6
hi def link sassFunction                Function
hi sassMixin guifg=#C54546 gui=bold
hi sassMixing guifg=#C54546                  
hi def link sassExtend                  PreProc
hi def link sassTodo                    Todo
hi def link sassInclude                 Include
hi def link sassDebug                   sassControl
hi def link sassWarn                    sassControl
hi def link sassControl                 PreProc
hi def link sassFor                     PreProc
hi def link sassEscape                  Special
hi sassIdChar guifg=#D40000
hi sassClassChar guifg=#FC4545
hi def link sassInterpolationDelimiter  Delimiter
hi def link sassAmpersand               Character
" FIXME No lo pilla del estilo
" hi def link sassId                      cssIdentifier
" hi def link sassClass                   cssClassName
hi sassId guifg=#D40000 gui=bold
hi sassClass guifg=#FC4545 gui=bold
" }}}1

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

" CoffeeScript {{{1
hi link coffeeBlock coffeeSpecialOp
hi link coffeeBlockComment coffeeComment
hi link coffeeBoolean javaScriptBoolean
hi link coffeeBracket javaScriptBracket
hi link coffeeComment javaScriptComment
hi link coffeeConditional javaScriptConditional
hi link coffeeConstant Constant
hi link coffeeCurly javaScriptBraces
hi link coffeeDotAccess coffeeExtendedOp
hi link coffeeEmbedDelim Delimiter
hi link coffeeEscape SpecialChar
hi link coffeeException javaScriptException
hi link coffeeExtendedOp coffeeOperator
hi link coffeeFloat Float
hi link coffeeGlobal javaScriptGlobal
hi link coffeeHeredoc String
hi link coffeeHeregex coffeeRegex
hi link coffeeHeregexComment coffeeComment
hi link coffeeInterpDelim PreProc
hi link coffeeKeyword javaScriptType
hi link coffeeNumber javaScriptNumber
hi link coffeeRegex javaScriptRegexpString
hi coffeeObject guifg=#F63434 gui=bold
hi link coffeeObjAssign javaScriptLabel
hi link coffeeOperator javaScriptOperator
hi link coffeeProtoAccess Constant
hi link coffeeParen javaScriptFuncName
hi link coffeeRepeat javaScriptRepeat
hi link coffeeStatement javaScriptStatement
hi link coffeeString javaScriptStringD
hi link coffeeSpecialOp javaScriptOperator
hi link coffeeSpecialVar javaScriptThis
hi link coffeeTodo javaScriptCommentTodo

" My changes
hi link coffeeFunction javaScriptFunction
" }}}1

" Ruby {{{1

" FIXME Hasta no cambiar el fondo según el lenguaje
" TODO El color de la ventana de proyecto debería ser diferente
"hi VertSplit       guifg=#808080 guibg=#DDDDDD gui=bold
"hi VisualNOS                     guibg=#0FF00F
"hi Visual                        guibg=#00FFFF
"hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
"hi WildMenu        guifg=#66D9EF guibg=#000000
"hi CursorLine                    guibg=#222222
"hi CursorColumn                  guibg=#FF000F
"hi LineNr          guifg=#ABABAB guibg=#F9F9F9
"hi NonText         guifg=#BCBCBC guibg=#BBBBBB
"hi FoldColumn      guifg=#465457 guibg=#FF0DDD
"hi Folded          guifg=#465457 guibg=#999999

hi rubyClass guifg=#DD228D gui=bold
hi rubyModule			guifg=#FF00FC gui=bold
hi rubyDefine guifg=#FF3000 gui=bold
hi rubyFunction guifg=#FF106B gui=bold
hi rubyKeyword			guifg=#4489C6

hi rubyMethodExceptional	guifg=#D45566

hi rubyClassVariable guifg=#DB76C9
" Color anterior: #B355DD	
hi rubyInstanceVariable guifg=#F47370
hi rubyGlobalVariable guifg=#442266 gui=bold,italic
hi rubyPredefinedVariable	guifg=#4455B6
" nil self __FILE__
hi rubyPseudoVariable		guifg=#F45566 gui=bold

hi rubyConstant		guifg=#1080FF
" ARGV STDIN RUBY_PLATFORM
hi rubyPredefinedConstant guifg=#303030 gui=bold	

hi rubyBlockParameter		guifg=#04A596

hi rubyConditional guifg=#6E71DF gui=bold
" if unless
hi rubyConditionalModifier	guifg=#A245CF gui=bold
" rescue
hi rubyExceptional		guifg=#4455F6 gui=bold
hi rubyRepeat			guifg=#B455F6 gui=bold
hi rubyRepeatModifier		guifg=#4B8566 gui=bold
hi rubyOptionalDo		guifg=#795966 gui=bold
" begin end rescue return
hi rubyControl guifg=#0040B0 gui=bold
hi rubyInteger			guifg=#C44506
hi rubyASCIICode		guifg=#845889
hi rubyFloat			guifg=#665566
hi rubyBoolean			guifg=#44BD96 gui=bold
" raise
hi rubyException		guifg=#840586 gui=bold
hi rubyPredefinedIdentifier	guifg=#FFA506
hi rubyOperator		guifg=#438526
hi rubyPseudoOperator		guifg=#747566
hi rubyBeginEnd		guifg=#145526
" protected private
hi rubyAccess			guifg=#645F26
hi rubyAttribute		guifg=#2455F6
hi rubyEval			guifg=#4495D6

hi rubyComment guifg=#B69685 gui=italic
hi rubyData			guifg=#A46586
hi rubyDataDirective		guifg=#949529
hi rubyDocumentation		guifg=#145516
hi rubyTodo			guifg=#D59556 gui=bold

" #!/bin/...
hi rubySharpBang		guifg=#000000 gui=bold
hi rubyInclude			guifg=#445996

hi rubyStringDelimiter		guifg=#BDC999
hi rubyString guifg=#42956F
hi rubyQuoteEscape		guifg=#4F5586
hi rubyStringEscape		guifg=#44B596
hi rubyInterpolationDelimiter guifg=#446688	
hi rubyNoInterpolation		guifg=#715191

hi rubySymbol guifg=#25B962
hi rubySymbolDelimiter		guifg=#FF0B66

hi rubyRegexpDelimiter		guifg=#745566 gui=bold
hi rubyRegexpEscape		guifg=#745516
hi rubyRegexpQuantifier	guifg=#742566
hi rubyRegexpAnchor		guifg=#744566
hi rubyRegexpDot		guifg=#741516 gui=bold
hi rubyRegexpCharClass		guifg=#7015D6
hi rubyRegexpSpecial		guifg=#740566
hi rubyRegexpComment		guifg=#045566
hi rubyRegexp			guifg=#700888

hi rubyInvalidVariable		guifg=#745526
hi rubyError			guifg=#FF0000
hi rubySpaceError		guifg=#FFFFFF guibg=#FC0000

if !exists("ruby_no_identifiers")
  hi rubyIdentifier		guifg=#4495B6
else
  hi rubyIdentifier		guifg=#4405A6
endif


" eRuby {{{2
hi erubyComment    guifg=#4489FC
" hi erubyDelimiter
hi erubyOneLiner   guifg=#44890C
hi erubyBlock      guifg=#4409FC
hi erubyExpression guifg=#0489FC
" }}}2

" Cucumber {{{2
hi def link cucumberUnparsedComment   cucumberComment
hi cucumberComment guifg=#94E095 gui=italic           
" #445599 #449055 
hi def link cucumberLanguage          SpecialComment
hi cucumberFeature guifg=#000 gui=bold
hi cucumberBackground guibg=#F45566
hi cucumberScenario guifg=#54C956 gui=bold        
hi cucumberScenarioOutline  guifg=#44F546 gui=bold
hi def link cucumberExamples          Define
hi def link cucumberPlaceholder       Constant
hi def link cucumberDelimiter         Delimiter
hi def link cucumberTags              Tag
hi def link cucumberString            String
hi cucumberGiven guifg=#F42546 gui=bold
hi cucumberWhen guifg=#B42546 gui=bold
hi cucumberThen guifg=#742546 gui=bold
" }}}2
" }}}1

" PHP {{{1
"#E9DB66 #C66302 
hi phpConstant guifg=#AE81FF gui=bold
hi phpCoreConstant guifg=#AE81FF gui=italic
hi phpComment guifg=#99CA76
hi phpException guifg=#A6E22E gui=bold
hi phpBoolean guifg=#AE81FF gui=bold
hi phpStorageClass guifg=#44D98F gui=italic
" abstrac, public, etc.
hi phpSCKeyword guifg=#2649EF gui=bold
" function
hi phpFCKeyword guifg=#4689EF gui=bold
hi phpStructure guifg=#66D9EF
" #44D98F
hi phpStringSingle guifg=#B4797F
hi phpStringDouble guifg=#B4797F
hi phpBacktick guifg=#44D98F gui=italic
hi phpNumber  guifg=#DE819F
hi phpFloat guifg=#DE819F
hi phpMethods guifg=#A6E22E
" PHP functions
hi phpFunctions guifg=#B6922E
hi phpBaselib guifg=#A6E22E
hi phpRepeat guifg=#F92672 gui=bold
hi phpConditional guifg=#449FB5 gui=bold
hi phpLabel guifg=#E6DB74 gui=bold
hi phpStatement guifg=#F92672 gui=bold
hi phpKeyword guifg=#F92672 gui=bold
" array, class, extend
hi phpType guifg=#4659EF gui=bold
hi phpInclude guifg=#B6720E gui=bold
hi phpDefine guifg=#6699EF gui=italic
hi phpSpecialChar guifg=#F92672 gui=bold
hi phpParent guifg=#8F8F8F
hi phpIdentifierConst guifg=#8F8F8F
hi phpParentError guifg=#960050 guibg=#1E0010
hi phpOctalError guifg=#960050 guibg=#1E0010
hi phpTodo guifg=#000000 gui=bold
hi phpMemberSelector guifg=#6699EF
hi phpIntVar guifg=#44D98F
hi phpEnvVar guifg=#44D98F
hi phpOperator guifg=#449FB5
" #449FB5
hi phpVarSelector guifg=#44BFB5 gui=bold
hi phpRelation guifg=#F92672
" Variables
" #44D98F
hi phpIdentifier guifg=#34B99F gui=bold
hi phpIdentifierSimply guifg=#44D98F
" }}}1

" SQL {{{1
hi sqlComment guifg=#808484
hi sqlKeyword guifg=#1474B4 gui=bold
hi sqlNumber guifg=#944444
hi sqlOperator guifg=#44A494 gui=bold
hi sqlSpecial guifg=#044444 gui=bold
hi sqlStatement guifg=#F40444 gui=bold
hi sqlString guifg=#D44444
hi sqlType guifg=#905484
hi sqlTodo guifg=#444444 gui=bold
hi sqlFunction guifg=#249444 gui=italic
hi sqlJoins guifg=#6444B4 gui=bold
hi sqlPrimaryKey guifg=#B444B4
" }}}1

" Vim {{{1
" TODO Finalizar todos los ajustes
hi vimOption guifg=#3366BB
hi vimInsert guifg=#449933
hi vimString guifg=#449922
hi vimComment guifg=#B0B0B0
hi vimTodo guifg=#A0A0A0 gui=bold
hi vimCommand guifg=#000000 gui=bold
hi vimOption guifg=#FF0055
hi vimMap guifg=#D55558
" Caracteres como <C-D> o <CR>
hi vimNotation guifg=#F0BFA8
hi vimGroup guifg=#00CF88
hi vimSymType guifg=#507F88
" }}}1

" Sh {{{1
hi def link shArithmetic		Special
hi def link shCharClass		Identifier
hi def link shSnglCase		Statement
hi def link shCommandSub		Special
hi shComment guifg=#88AA88
" #FB8384
hi shConditional guifg=#993322 gui=bold
hi def link shCtrlSeq		Special
hi def link shExprRegion		Delimiter
hi def link shFunctionKey		Function
hi def link shFunctionName		Function
hi shNumber	guifg=#289955
hi def link shOperator		Operator
hi def link shRepeat		Repeat
hi def link shSet		Statement
hi def link shSetList		Identifier
hi shShellVariables guifg=#445588 gui=bold
hi def link shSpecial		Special
hi shStatement	 guifg=#3063D4 gui=bold
hi shString	guifg=#DD9988
hi def link shTodo		Todo
hi def link shAlias		Identifier
" }}}1

" NERDTree {{{1
hi NERDTreeBookmarksHeader guifg=#B72255 gui=bold
hi def link NERDTreeBookmarksLeader ignore
hi NERDTreeBookmarkName guifg=#F77205 gui=bold
hi def link NERDTreeBookmark Normal

hi def link NERDTreeHelp String
hi def link NERDTreeHelpKey Identifier
hi def link NERDTreeHelpCommand Identifier
hi def link NERDTreeHelpTitle Macro
hi def link NERDTreeToggleOn Question
hi def link NERDTreeToggleOff WarningMsg

hi NERDTreeDir guifg=#4567D9 gui=bold
hi NERDTreeUp guifg=#85B7F9
hi NERDTreeCWD guifg=#0517B9 gui=bold
hi def link NERDTreeLink Macro
hi NERDTreeOpenable guifg=#67D994 gui=bold
hi def link NERDTreeFlag ignore
hi def link NERDTreeRO WarningMsg

hi def link NERDTreeCurrentNode Search
" }}}1

" Project {{{1
hi projectDescription guifg=#D4669B gui=bold
hi def link projectScriptinout  Identifier
hi projectFoldText     guifg=#44FF55 guibg=#4455BB
hi def link projectComment      Comment
hi def link projectFilter       Identifier
hi def link projectFlags        Identifier
hi projectDirectory guifg=#94B6FB
hi def link projectFilterRegexp String
hi def link projectFlagsValues  String
hi def link projectWhiteError   Error
hi def link projectFlagsError   Error
hi def link projectFilterError  Error
" }}}1

" Yacc {{{1
hi def link yaccComment	Comment
hi def link yaccCurly	Delimiter
hi def link yaccCurlyError	Error
hi def link yaccDefines	cDefine
hi def link yaccParseParam	yaccParseOption
hi def link yaccParseOption	cDefine
hi yaccNonterminal guifg=#5678BB
hi def link yaccDelim	Delimiter
hi def link yaccKeyActn	Special
hi def link yaccSectionSep	Todo
hi def link yaccSep	Delimiter
hi def link yaccString	String
hi def link yaccStmt	Statement
hi def link yaccType	Type
" }}}1

" Lex {{{1 TODO
hi def link lexAbbrvComment	lexPatComment
hi def link lexBrace	lexPat
hi def link lexPatTagZone	lexPatTag
hi def link lexSlashQuote	lexPat

hi def link lexAbbrvRegExp	Macro
hi def link lexAbbrv	SpecialChar
hi lexCFunctions	guifg=#993344
hi lexMorePat	guifg=#44BB55
hi def link lexOptions	PreProc
hi def link lexPatComment	Comment
hi lexPat guifg=#4F7DD9
hi lexPatString guifg=#882233	
hi lexPatTag	guifg=#D72289
hi lexSep	guifg=#4578C9
hi def link lexStartState	Statement
" }}}1


" templates trabajo

" Inicio <%...%>
hi htmlTemplateTag      guifg=#F0A000        
" Fin <%/...%>
hi htmlTemplateEndTag   guifg=#F19898        
hi templateRepeat guifg=#FF6455 gui=bold


" Mis añadidos
" TODO Resaltar el operador !
" TODO Resaltar el .
" TODO Resaltar la ,
" TODO Resaltar el :
" TODO Resaltar el ;
" TODO Métodos
" TODO variables
" TODO Llaves anidadas
" TODO Corchetes
" TODO Paréntesis anidados
" TODO Dólar $() $. para señalar jQuery
" TODO jQuery Keywords

" Otros colores que molan
" #FFCD8D 
" #A6E22E 
" #0082F8 
