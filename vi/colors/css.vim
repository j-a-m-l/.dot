" Vim color file
"
" Author: Juan Antonio Martín Lucas 
"
" Note: CSS
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="css"

" Recogido de HTML
" Valores de los atributos de los elementos
hi String          guifg=#FFCCDD
" Etiquetas no-html (etiquetas de plantillas como las del curro)
hi Function        guifg=#FF1199               gui=bold
" '</...>'
hi Identifier      guifg=#FD971F
" Para caracteres codificados con &...; Éste mola, porque es como un kiwi pálido: #D4F681 
hi Special         guifg=#EE7749 guibg=bg      gui=italic
" Atributos de elementos
hi Type            guifg=#960050               gui=none
" Nombres de los elementos (etiquetas HTML)
hi Statement       guifg=#CC4422               gui=bold
" Comentario
hi Comment         guifg=#CCCCCC



hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#c48410
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#FFFFDD guibg=#001122
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#960050 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000

hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#2C13CA               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#FFFFFF guibg=#455354
" marks column
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi SpecialKey      guifg=#888A85               gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#BBBBBB guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi Normal          guifg=#3B3A32 guibg=#FCF0F0

hi CursorLine                    guibg=#222222
hi CursorColumn                  guibg=#3E3D32
hi LineNr          guifg=#BCBCBC guibg=#3B3A32
hi NonText         guifg=#BCBCBC guibg=#3B3A32

" JavaScript
" var this Verde que es interesante pero que no encaja
" bien: #A6E22E             
hi javaScriptType     guifg=#2C13CA               gui=bold
hi javaScriptOperator guifg=#66D9F8
hi javaScriptNull
" return break continue switch case EL color es demasiado débil para su
" función; o más claro y para comentarios, o negrita o algo así
hi javaScriptBranch guifg=#458986
" Property (property: value) TODO El color está bien, pero me parece a
" veces que es más de valor que de etiqueta... uhmm, como es bonito, lo
" puedo dejar y si no me acostumbro, pues para otra cosa
hi javaScriptLabel   guifg=#15A578
" with try catch
hi javaScriptStatement
hi javaScriptPrototype guifg=#4455FF
hi javaScriptComment
hi javaScriptDocTags
hi javaScriptDocComment
hi javaScriptDocParam
hi javaScriptRegexpString
hi javaScriptBoolean
hi javaScriptConditional guifg=#2C13CA
hi javaScriptRepeat guifg=#2C13CA
hi javaScriptCommentTodo
" Cadenas con comillas dobles TODO Ligera diferenciación, si existiera en
" JavaScript
hi javaScriptStringD guifg=#528BF9
" Cadenas con comillas simples
hi javaScriptStringS guifg=#528BF9

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
