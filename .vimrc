" indentation settings

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
filetype indent on

" search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

set number
set cursorline
set laststatus=2
set wildmenu
syntax on

" performance and misc
set nocompatible
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Russian - PC Langmap for Vim
" Maps Cyrillic keys to QWERTY equivalents including punctuation
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,/.,?,\\,.:
