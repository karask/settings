" get vim-ruby bundle first
"git clone git://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby

autocmd FileType ruby compiler ruby

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

:set tabstop=2        " number of spaces
:set shiftwidth=2     " for indentation
:set expandtab        " spaces instead of tab

" < and > can be used to unindent and indent selections!

:colorscheme desert256

