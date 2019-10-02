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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-ragtag'

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-syntatic/syntastic'

call vundle#end()
filetype plugin indent on

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

map <leader>nn :NERDTreeToggle<cr>


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline_symbols.linenr=''

let g:airline_powerline_fonts=1
let g:airline_theme="luna"
