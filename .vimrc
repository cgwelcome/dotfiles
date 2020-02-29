set nocompatible
set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
set autoindent          " auto indenting
set number              " line numbers
set noswapfile
set nobackup            " get rid of anoying ~file
set ff=unix
set encoding=utf-8
set relativenumber

set exrc
set secure

colorscheme koehler
hi Pmenu ctermfg=yellow ctermbg=black

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'w0rp/ale'
Plug 'yggdroot/indentline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-ragtag'
Plug 'mgechev/vim-jsx'

Plug 'lervag/vimtex'

call plug#end()

set shiftwidth=4
set tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Hack + Powerline patch font
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly =''
let g:airline_symbols.dirty = '!'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

" airline Theme
let g:airline_theme = 'murmur'

" nerdtree
let g:mapleader = ' '
let g:NERDTreeQuitOnOpen = 1
nnoremap <leader>nn :NERDTreeToggle<CR>

" fzf
nnoremap <leader><space> :Files<CR>

" vimtex
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_indent_ignored_envs = ['document', 'center', 'minipage',
			\ 'flushleft', 'flushright']

" indentLine
let g:indentLine_concealcursor = ''
let g:indentLine_setConceal = 1

" ycm
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <leader>gtp :YcmCompleter GetType<CR>
nnoremap <leader>gp :YcmCompleter GetParent<CR>
nnoremap <leader>gti :YcmCompleter GoToInclude<CR>
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yd :YcmDiags<CR>

let g:ycm_show_diagnostics_ui = 0

" ale
let g:ale_linters = {
			\ 'tex': ['chktex'],
			\ 'cpp': ['clang']
			\ }
