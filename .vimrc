" indentation settings

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on

" search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

set number
set relativenumber
set cursorline
set laststatus=2
set wildmenu
syntax on

" performance and misc
set nocompatible
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" set statusline

" Russian - PC Langmap for Vim
" Maps Cyrillic keys to QWERTY equivalents including punctuation
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

