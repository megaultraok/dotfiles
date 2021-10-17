" EDITOR
set nocompatible
set number
set wrap
set linebreak
set autoindent
filetype off
set ruler
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set colorcolumn=80
syntax on
colorscheme koehler
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set title
set confirm
set mouse=a


au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[1 q"

" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" CONFIG FILES
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" REMAPPINGS
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<Esc>ko<tab>
noremap <C-n> :NERDTree<CR>
noremap <C-t> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>
noremap <space> za
