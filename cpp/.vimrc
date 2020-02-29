let g:ale_cpp_clang_options='
    \ -O3 -Wall -Wextra -Werror -Wno-long-long -Wno-variadic-macros
    \ -fexceptions -DNDEBUG -std=c++17 -xc++
    \ -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include/g++-v9'

let g:ale_cpp_clangtidy_options = ''

noremap <C-K> :pyf /usr/lib/llvm/8/share/clang/clang-format.py<CR>
