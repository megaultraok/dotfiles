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
colorscheme peachpuff
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set title
set confirm
set mouse=a
bo 11new | setlocal winfixheight
exec bufwinnr(2) "wincmd w" | term ++curwin

" Start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree %:p:h | wincmd p

let g:airline_theme='papercolor'

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
Plugin 'pseewald/vim-anyfold'

call vundle#end()
filetype plugin indent on

autocmd Filetype * AnyFoldActivate               " activate for all filetypes 
set foldlevel=99                                 " Open all folds

" CONFIG FILES
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" REMAPPINGS
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<Esc>ko<tab>
noremap <C-e> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind 
noremap <space> za
