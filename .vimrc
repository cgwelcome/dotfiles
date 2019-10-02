set nocompatible

set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set tabstop=4
set shiftwidth=4
set expandtab
set ff=unix
set encoding=utf-8
set t_Co=256
set relativenumber

colorscheme koehler
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'

call plug#end()

filetype plugin indent on

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

map <leader>nn :NERDTreeToggle<cr>
