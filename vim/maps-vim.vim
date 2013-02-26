" MAPS

" Recommend by Learning the vi and Vim Editors
map e ea

" Command mode movement
" Alt + h
cmap è <Left>
" Alt + l
cmap ì <Right>

" Command mode movement (Emacs way)
" Alt + b
cnoremap â <C-Left>
" Alt + f
cnoremap æ <C-Right>
" Up is like Emacs
" Down is like Emacs
cnoremap <C-A> <Home>
" End is like Emacs

" Remove word (back)
" C-W

" Avoid ESC key on command mode
cmap jk <ESC>

" Next row with long lines
nnoremap j gj
nnoremap k gk

" Clear the search highlighting (yeahhhhh!!!)
nnoremap <ESC> :nohlsearch<CR><ESC>

"
" En pruebas...
"

imap <C-Space> <C-x><C-o>

" Save a file that requires root privileges
cmap w!! w !sudo tee % >/dev/null
