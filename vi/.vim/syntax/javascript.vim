" Added to vim-javscript?
syntax keyword javaScriptConsole        console
" TODO Improve more
syntax match   javaScriptObjectDot     /\(?this\|\h\w*\)\]*)*\./ contained contains=javaScriptDotNotation,javaScriptThis nextgroup=javaScriptObjectDot,javaScriptPropery,javaScriptMethod
syntax match   javaScriptProperty      /\(\(?this\|\h\w*\)\.\)\+\h\w*/ contained contains=javaScriptObjectDot
" nextgroup=syntax match   javaScriptMethod        /\(\(?this\|\h\w*\)\]*)*\.\)\+\h\w*(/he=e-1 contained contains=javaScriptObjectDot

" Also in vim-javascript:
" syntax keyword javaScriptThis           this
" syntax keyword javaScriptArguments           arguments

" Added to vim-javscript?
hi def link javaScriptConsole   Type
hi def link javaScriptProperty  Special
hi def link javaScriptMethod    Special

" Also in vim-javascript
" hi def link javaScriptThis      Type
