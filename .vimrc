set nocompatible

set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
set autoindent          " auto indenting
set number              " line numbers
set noswapfile
set nobackup            " get rid of anoying ~file
set tabstop=4
set shiftwidth=4
set ff=unix
set encoding=utf-8
set relativenumber

colorscheme koehler
hi Pmenu ctermfg=yellow ctermbg=black

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-ragtag'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mgechev/vim-jsx'

call plug#end()
>>>>>>> Stashed changes

call plug#end()

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2


" Disable C linter, YCM handles it
let g:ale_linters = {'c': [], 'cpp': []}

" Hide ALE cursor
let g:ale_echo_cursor = 0

let g:mapleader = ' '
nnoremap <silent><leader>nn :NERDTreeToggle<CR>
nnoremap <silent><leader><space> :Files<CR>
