set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins on github repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'ervandew/supertab'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable             " enable syntax highlighting (previously syntax on).

let g:solarized_termcolors=256
set t_Co=16
set background=dark
colorscheme solarized     " set colorscheme
"set t_Co=16

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
set number                " show line numbers
set laststatus=2          " last window always has a statusline
"filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set nowrap                " don't wrap text
set backspace=indent,eol,start

map <F2> :NERDTreeToggle<CR>

imap <esc>OH <esc>0i
cmap <esc>OH <home>
nmap <esc>OH 0
imap <esc>OF <esc>$a
cmap <esc>OF <end>
nmap <esc>OF $

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

let g:pymode_rope = 0

" " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"
" " Support virtualenv
" let g:pymode_virtualenv = 1
"
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


