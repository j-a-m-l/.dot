" Configuración de mapeos

let mapleader = "ç"

" Nunca habrá 2 'ñ' seguidas o 2 'j'
imap jj <ESC>

" Y funciona como C y D, que se aprovecha más
nnoremap Y y$

" Mapeos para pestañas
map ñn :tabnew<CR>
map ñp :tabnew<CR>:Project<CR>
map ñt :tabnew<CR>:CommandT<CR>
map ñc :tabclose<CR>
map ñh :tabprev<CR>
" map ñj
" map ñk
map ñl :tabnext<CR>

" PDV (PHPDocumentator for Vim)
imap <C-d> <ESC>:call PhpDocSingle()<CR>i
nmap <C-d> :call PhpDocSingle()<CR>
vmap <C-d> :call PhpDocRange()<CR>

" Mapeo para Project
map <silent> <Leader>p <Plug>ToggleProject

" Mapeo para TagBar
map <LEADER>g :TagbarToggle<CR>

" Commands (FIXME terminal)
cmap è <Left>
cmap ê <Up>
cmap ë <Down>
cmap ì <Right>

" Mapeos recomendados (Learning the vi and Vim Editors)
map e ea

"
" En pruebas...
"

" Le quita trabajo a la derecha (conflicto con hexadecimales, offers...)
" imap ff <ESC>

" Guardado rápido TODO
" <M-w> conincide con el S.O.
" map <M-w> <ESC>:w<CR>

imap ùù <C-O>yyi
imap ää <C-O>ddi
imap ðð <C-O>pi

" FIXME van a la barra
imap è <Left>
imap ê <Down>
imap ë <Up>
imap ì <Right>

imap ° <C-O>0
imap ¤ <C-O>$

imap ï <C-O>o
imap Ï <C-O>O

imap ÷ <C-O>w
imap × <C-O>W
imap â <C-O>b
imap Â <C-O>B

imap å <C-O>e

imap õ <C-O>u

imap <C-Space> <C-x><C-o>

map <Space> <C-e>f
