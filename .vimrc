""""" Default Vim settings

set nocompatible            " use vim only

" load all plugins via pathogen plugin
execute pathogen#infect()

" plugins to install:
"" use update_plugins.rb

let mapleader=","

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd            " Show (partial) command in status line.
set showmatch          " Show matching brackets.

"set ignorecase         " Do case insensitive matching
"set smartcase          " Do smart case matching

set incsearch          " Incremental search
set hlsearch           " Highlight all search matches -- to remove :noh or :nohlsearch

"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)

set number             " Show line numbers -- also :set nu and :set nonu to remove

set expandtab          " Expands tabs into spaces
set shiftwidth=2       " Tab length is now 3 characters
set softtabstop=2      " change Tab size to 3
set smartindent        " Indent as expected to programming -- keeps previous line indentation
"set autoindent         " does smarter indentation based on filetype

set cursorline         " Underlines line that cursor is on

"set colorcolumn=80    " Show red vertical line in column 80



""""" Mappings

map <F2> :NERDTreeToggle<CR>
inoremap <leader>, <C-X><C-O>



""""" Ruby settings

" .ru files are Ruby -- seems that it is not needed though...
"au BufRead,BufNewFile *.ru setfiletype ruby

" Disable automatic folding in vim-markdown
let g:vim_markdown_folding_disabled=1
