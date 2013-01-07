set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set ruler
set laststatus=2
set backspace=indent,eol,start

syntax on
set background=dark

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set cindent

"set textwidth=80

highlight TrailingWhitespace ctermbg=red
match TrailingWhitespace /\s\+\%#\@<!$/

highlight Search ctermfg=lightgrey ctermbg=lightblue

" Nuke trailing whitespace with control-N
:nmap <C-N> :%s/\s\+$// <CR> <ESC> :nohl <CR>

" Nuke highlights with control-H
:nmap <C-H> :nohl <CR>

" Toggle line numbers with control-L
:nmap <C-L> :set invnumber <CR>
