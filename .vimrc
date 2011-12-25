aunmenu Help.
aunmenu Window.
syntax on
" Sets how many lines of history VIM has to remember
set history=300
set tags+=$HOME/.vim/tags/python.ctags
set autoread

" Compiling python errors
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Enable filetype plugin
filetype plugin on
filetype indent on
filetype plugin indent on
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" Set to auto read when a file is changed from the outside
set autoread

"Tab manipulation
" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Set 7 lines to the curors - when moving vertical..
set so=7
set wildmenu "Turn on WiLd menu
" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>
map <leader>w :w!<cr>

"swap files
set nobackup
set nowb
set noswapfile

"Last Editted position
au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"often mistaken words
abbr reponse response
abbr pbd pdb

"ingore useless file during tabs
set wildignore=*.swp,*.bak,*.pyc

"no bell
set visualbell
set title

"bash softab
set softtabstop=4

"Get rid of trailing whitespaces
" For trucating trailing whitespace
command! TruncW :%s/\s\+$//ce |

let g:test_command='nosetests'
let mapleader = ","
let g:mapleader = ","

map <leader>w :w!<cr>

let g:NERDTreeWinSize = 40
set winminwidth=0
map <S-C-L> <C-W>h<C-W>|
map <S-C-H> <C-W>l<C-W>|

let g:pydiction_location = "/home/lowks/.vim/after/ftplugin/complete-dict"
syntax enable
call pathogen#infect()
call pathogen#helptags()

"easy pasting
set pastetoggle=<F2>

"folding
set foldmethod=indent
set nofoldenable
set foldlevel=2000
nnoremap <space> za
vnoremap <space> zf

"indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"nice colors in \e psql
au BufRead /tmp/psql.edit.* set syntax=sql
