set nocompatible
set backspace=2         " backspace
syntax on               " syntax highlighting
set autoindent          " auto indenting
set number              " line numbers
set noswapfile
set nobackup            " get rid of swap files
set ff=unix
set encoding=utf-8
set relativenumber

colorscheme koehler
hi Pmenu ctermfg=yellow ctermbg=black

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug '~/.fzf'

Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

Plug 'mgechev/vim-jsx'
Plug 'mattn/emmet-vim'

Plug 'lervag/vimtex'
Plug 'nacitar/a.vim'

call plug#end()

au BufRead,BufNewFile *.asm set filetype=nasm

set shiftwidth=2
set tabstop=2
set expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType vim setlocal shiftwidth=4 tabstop=4

let g:mapleader = ' '

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = ''
let g:airline_theme = 'murmur'

" nerdtree
let g:NERDTreeQuitOnOpen = 1
nnoremap <leader>nn :NERDTreeToggle<CR>

" fzf
nnoremap <leader><space> :FZF<CR>

" vimtex
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_indent_ignored_envs = ['document', 'center', 'minipage',
    \ 'flushleft', 'flushright']

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
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
au BufEnter *.tex let g:ycm_auto_trigger = 0

" ale
let g:ale_linters = {
    \ 'tex': ['chktex'],
    \ 'cpp': ['clang'],
    \ }

let g:ale_fixers = {
    \ 'cpp': ['clang-format']
    \ }

let g:ale_c_parse_compile_commands = 1
let g:ale_cpp_clang_options = ''
let g:ale_nasm_nasm_options = '-f elf32'
let g:ale_fix_on_save = 1
