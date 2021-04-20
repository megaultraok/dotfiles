" EDITOR
set number relativenumber
set wrap
set linebreak
set autoindent
filetype indent plugin on
set ruler
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
syntax on
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set title
set confirm

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" POWERLINE
set rtp+=/Users/jada/Library/Python/3.9/lib/python/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
