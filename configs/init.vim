" disable new buffer on autocomplete
set completeopt-=preview

" Basics
set encoding=utf-8 fileencodings=

set number
set autoindent
set colorcolumn=80

set mouse=a

" vs splits on right
set splitright

" reload auto
set autoread

" Set the minimal amount of lines under and above the cursor
" Useful for keeping context when moving with j/k
set scrolloff=5

" Show current mode
set showmode

" Show command being executed
set showcmd

" Enable line wrapping
" set wrap

" Wrap on column 80
au BufRead,BufNewFile *.md,*.rst,*.txt setlocal textwidth=80
au BufRead,BufNewFile *.md,*.rst,*.txt setlocal spell spelllang=en_us

set cindent
set expandtab
set softtabstop=4
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

" Move cursor to the matched string
set incsearch

" Don't highlight matched strings
set nohlsearch

set list
set listchars=trail:†,tab:»·,nbsp:·

highlight SpecialKey ctermfg=grey guifg=grey70

syntax on
set background=dark

set filetype=on

filetype plugin indent on
