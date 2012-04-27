if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif
if !exists("main_syntax")
   let main_syntax = 'html'
endif

if version < 600
   so <sfile>:p:h/templates.vim
   so <sfile>:p:h/html.vim
else
	runtime! syntax/templates.vim
	runtime! syntax/html.vim
	unlet b:current_syntax
endif


" Opciones para el trabajo
"syn region  htmlTemplateEndTag             start=+<%/+      end=+%>+ contains=htmlTagN,htmlTagError,htmlTag
"syn region  htmlTemplateTag                start=+<%[^/]+   end=+%>+ contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster
"syn keyword templateRepeat repeat

syn keyword htmlTemplateTag   repeat contained keepend contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster
syn keyword htmlTemplaEndteTag   if contained keepend contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster

let b:current_syntax = "templates"
