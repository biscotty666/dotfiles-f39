set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
packadd YouCompleteMe
filetype plugin indent on    " required
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set expandtab
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<
set fileformat=unix
set textwidth=79

set cursorline
set number
set relativenumber
set scrolloff=8
set signcolumn=yes
set showcmd
set noshowmode
set conceallevel=1
set shortmess+=c
set formatoptions-=cro

set ignorecase
set smartcase
set incsearch
set hlsearch

" Enable folding
set foldmethod=indent
set foldlevel=99

set clipboard=unnamedplus

" Enable folding with the spacebar
nnoremap <space> za

au BufRead, BufNewFile *.py,*.pyw *.c *.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme pablo
