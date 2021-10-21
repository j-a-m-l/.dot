" Honestly, I don't care...
set nocompatible

" Copy the indent of the current line when starting a new line
set autoindent
" To copy how the current line is intended (spaces or tabs)
set copyindent
" TODO try
" set smartindent

let default_tab_width = 4
" Indent n spaces
let &shiftwidth = default_tab_width
" A tab is four spaces
let &tabstop = default_tab_width
let &softtabstop = default_tab_width
" To insert as many spaces as `shiftwidth` defines when using <Tab>
set smarttab

" Case insensitive search
set ignorecase
" Case sensitive search when the query contains upper case characters
set smartcase
 " Show search matches as you type
set incsearch
" Higlhight search
set hlsearch
" When reaching the end of the file, search moves to the beginning
set wrapscan

" Autocompletion
" - menuone: use the popup menu even when there is only 1 match
" - preview: show extra information
set completeopt+=menuone,preview

 " Show matching parenthesis
set showmatch

" Defines how <BS>, <Del>, CTRL-W and CTRL-U works in insert mode:
"  - start: allow using it over the start
"  - indent: allow using it over autoindent
"  - eol: allow using it over line breaks
set backspace=start,indent,eol

" Start scrolling at this number of lines from the bottom
set scrolloff=4

" Show command info in the status line
set showcmd
" Don't auto-change directory to current file
set noautochdir
" Set to auto read when a file is changed from the outside
set autoread
" Prevent vim from adding an empty line at the end of file
set noeol
" Sadly, `modeline` (use a comment to apply file-specific settings) is vulnerable to several attacks: https://nvd.nist.gov/vuln/detail/CVE-2019-12735
set nomodeline
 " Read n lines if `modeline` is enabled
set modelines=0
 " Display a column at the width
set colorcolumn=80
" Necessary to support the arrows of NERDTree and used by vim-hug-neovim-rpc, nvim-yarp and deoplete
set encoding=utf-8
" Split vertically to the right
set splitright
" Turn line numbering. Turn it off with 'set nonu'
set nu
" Relative line numbering. Version 7.3
"set relativenumber
"
" Highline the current line to locate the cursor easily
set cursorline
" To use 24-bit colour, when the terminal is capable
set termguicolors

" Enhace mode command line completion
set wildmenu
set wildignore+=*.jpg,*.jpeg,*.png,*.gif " Ignore images
set wildignore+=*.pdf " Ignore PDF files
set wildignore+=*.swp " Ignore temporary files
set wildignore+=*.svn,*.git " Ignore VCS files

" Wrap visually long lines at `breakat` characters rather the last character that fits on screen
set linebreak

" My themes
colo noijd

" TODO: if not exists, display error or something like that
set grepprg=rg\ --vimgrep
