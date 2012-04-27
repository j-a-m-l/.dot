" MyDocs.vim
" Maintainer: Juan Antonio Martín Lucas 

" manual lookup is mapped to ctrl-p
" ctrl-o is used to jump out of insert mode for one command.
" - jump out for one command <C-O>
" - call OpenPhpFunction with the word under cursor
" - CR seems to indicate end of fcn call
" - <C-O> again - we are in insert mode in the man page
" - this time, we jump back to previous window.
" - at the end of the day, we are still in insert mode,
"   the cursor is in exactly the same spot, and the man
"   page for php is visible
"inoremap <C-k><C-O> ::call OpenAndroidDoc('<c-r><c-w>')<CR><C-O>:wincmd p<CR>
"nnoremap <C-k> :call OpenAndroidDoc('<c-r><c-w>')<CR>:wincmd p<CR>
"vnoremap <C-k> :call OpenAndroidDoc('<c-r><c-w>')<CR>:wincmd p<CR>
" based on work by Darren Greaves <darren@krapplets.org> - Thanx for
" giving me the idea and a good chunk of the code!

" FIXME Puedo poner por ahora que use Eclim
inoremap <C-k> :JavaDocSearch
nnoremap <C-k> :JavaDocSearch
vnoremap <C-k> :JavaDocSearch

let g:EclimBrowser = 'opera'

" Avoid loading this function twice
if exists("my_docs_instance") || &cp
	finish
endif

let my_docs_instance = 1

function! OpenAndroidDoc(keyword)
	echo "Buscando..."
	let proc_keyword = substitute(a:keyword , '_', '-', 'g')
	"try
		"exe 'pedit'
		"catch /.*/
	"endtry
	"exe 'wincmd P'
	"exe 'enew'

	"exe "set buftype=nofile"
	"exe "setlocal noswapfile"
" FIXME ¿Habrá alguna forma de mejorar los resultados?
	"exe 'silent r!lynx -dump -nolist file:///opt/android-sdk-linux_x86/docs/search.html\#q='.proc_keyword.'&t=0'
	exe 'silent r!opera file://localhost/opt/android-sdk-linux_x86/docs/search.html\#q='.proc_keyword.'&t=0'

	"exe 'norm gg'
	"exe 'call search("<")'
	"exe 'norm dgg'
	"exe 'call search(">")'
	"exe 'norm dGgg'
endfunction
