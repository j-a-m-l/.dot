" MAPS

let mapleader = "ç"

" Tabs
map ñn :tabnew<CR>
map ñc :tabclose<CR>
map ñh :tabprev<CR>
map ñl :tabnext<CR>
" map ñj
" map ñk

" Recommend by Learning the vi and Vim Editors
map e ea

" Command mode
cmap è <Left>
cmap ì <Right>
" Up is like Emacs
" Down is like Emacs
" End is like Emacs

"
" En pruebas...
"
cmap ÷ <C-O>w
cmap â <C-O>b

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


" PDV (PHPDocumentator for Vim)
imap <C-d> <ESC>:call PhpDocSingle()<CR>i
nmap <C-d> :call PhpDocSingle()<CR>
vmap <C-d> :call PhpDocRange()<CR>

" Mapeo para Project
map <silent> <Leader>p <Plug>ToggleProject

" Mapeo para TagBar
map <LEADER>g :TagbarToggle<CR>
