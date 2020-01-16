import os
import ycm_core

flags = [
    '-isystem ',
    '/usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include/g++-v9',
]

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', ]

def FlagsForFile(filename, **kwargs):
    return {
        'flags': flags,
        'do_cache': True
    }
