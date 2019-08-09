" Specify a directory for plugins
call plug#begin(fnameescape(g:vi_config_path . 'plugins'))

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'kien/ctrlp.vim'

" FIXME
" Plug 'ervandew/supertab'

Plug 'tomtom/tcomment_vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'plasticboy/vim-markdown'

Plug 'bkad/CamelCaseMotion'

Plug 'tpope/vim-surround'

" Wiki
Plug 'vimwiki/vimwiki'

" Colorizes colours in the form #rrggbb, rgb(r, g, b), etc.
Plug 'lilydjwg/colorizer'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" i3 window manager
Plug 'PotatoesMaster/i3-vim-syntax'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'roxma/nvim-yarp'
endif

" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" TODO automate
" CocInstall coc-html coc-css coc-json coc-eslint coc-tsserver
" CocInstall coc-rls (runs `rustup component add rls rust-analysis rust-src`)

" Rust
Plug 'rust-lang/rust.vim'
" Plug 'racer-rust/vim-racer'
" TOML
Plug 'cespare/vim-toml'

" JavaScript syntax
" Plug 'jelera/vim-javascript-syntax'
" Plug 'pangloss/vim-javascript'
" Plug 'othree/yajs.vim'

" TypeScript
Plug 'leafgarland/typescript-vim'

" React
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'

" Vue
Plug 'posva/vim-vue'

"
" TODO Not used yet plugins:
"

" Plug 'aaronbieber/vim-quicktask'
" Plug 'altercation/vim-colors-solarized'
" Plug 'dhruvasagar/vim-dotoo'
" Plug 'digitaltoad/vim-pug'
" Plug 'drichard/vim-brunch'
" Plug 'easymotion/vim-easymotion'
" Plug 'fatih/vim-go'
" Plug 'godlygeek/tabular'
" Plug 'groenewege/vim-less'
" Plug 'jimenezrick/vimerl'
" Plug 'kana/vim-textobj-user'
" Plug 'kchmck/vim-coffee-script'
" Plug 'Lokaltog/vim-powerline'
" Plug 'luochen1990/rainbow'
" Plug 'majutsushi/tagbar'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'Matt-Deacalion/vim-systemd-syntax'
" Plug 'mattpap/vim-owl-tools'
" Plug 'mileszs/ack.vim', {'name': 'mileszs-ack'}
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'panozzaj/vim-autocorrect'
" Plug 'pbrisbin/vim-syntax-shakespeare'
" Plug 'peterhoeg/vim-qml'
" Plug 'Quramy/tsuquyomi'
" Plug 'Raimondi/delimitMate'
" Plug 'salsifis/vim-transpose'
" Plug 'scrooloose/syntastic'
" Plug 'shawncplus/phpcomplete.vim'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler.vim'
" Plug 'Shougo/vimproc.vim'
" Plug 'sickill/vim-pasta'
" Plug 'sjl/gundo.vim'
" Plug 'slim-template/vim-slim'
" Plug 'tomtom/quickfixsigns_vim'
" Plug 'tomtom/tlib_vim'
" Plug 'Townk/vim-autoclose'
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-cucumber'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-repeat'
" Plug 'vim-scripts/dbext.vim'
" Plug 'vim-scripts/renamer.vim'
" Plug 'vim-scripts/taglist.vim' " ctags isn't available yet
" Plug 'vim-scripts/YankRing.vim'
" Plug 'VundleVim/Vundle.vim'
" Plug 'wavded/vim-stylus'
" Plug 'wlangstroth/vim-haskell'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
" Plug 'yalesov/vim-emblem'

"
" TODO Interesting plugins:
"

" Language pack
" Plug 'sheerun/vim-polyglot'

" Access to GitHub events
" Plug 'junegunn/vim-github-dashboard'
"
" Plug 'junegunn/vim-peekaboo'

" https://github.com/Xuyuanp/nerdtree-git-plugin

" Align
" Plug 'junegunn/vim-easy-align'

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"
" Old plugins (some of them could be useful!)
"
" Plug 'manpageview'
" Plug 'matchit'
" Plug 'my_docs'
" Plug 'Shougo/neocomplete.vim'
" Plug 'n3.vim'
" Plug 'phpdoc.vim'
" Plug 'project'
" Plug 'showmarks'
" Plug 'sparql.vim'
" Plug 'vcscommand'
" Plug 'vim-addon-mw-utils'
" Plug 'VimDebugger'
" Plug 'vim-jquery'
" Plug 'abrr'
" Plug 'agtd'
" Plug 'zencoding'
" Plug 'vim-orgmode'
" Plug 'camelcasemotion'
" Plug 'command-t'
" Plug 'conque-term'

" Plug 'j-a-m-l/vim-javascript'
" Plug 'j-a-m-l/VimRemUp'
" Plug 'j-a-m-l/vertical-f'

" Initialize plugin system
call plug#end()
