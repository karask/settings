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


" auto complete with shift enter do and { blocks!
if !exists( "*EndToken" )
  function EndToken()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*|\(,\|\s\|\w*|\s*\)\?$'
    if match( current_line, braces_at_end ) >= 0
      return '}'
    else
      return 'end'
    endif
  endfunction
endif

imap <S-CR> <ESC>:execute 'normal o' . EndToken()<CR>O

