let g:ale_cpp_clang_options='
	\ -Wall -Wextra -Werror -Wno-long-long -Wno-variadic-macros
	\ -fexceptions -DNDEBUG -std=c++17 -xc++
	\ -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include/g++-v9'

set cino=N-s,g0,:0
set shiftwidth=2
set tabstop=2
