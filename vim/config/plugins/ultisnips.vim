" Track the engine
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine
Plugin 'honza/vim-snippets'

let g:UltiSnipsSnippetDirectories=['UltiSnips', 'config/plugins/UltiSnips']

" Trigger configuration
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" :UltiSnipsEdit split the window.
let g:UltiSnipsEditSplit="vertical"
