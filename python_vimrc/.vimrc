""""" Default Vim settings

set nocompatible            " use vim only
filetype off                " no auto file recognition?

" encoding
set encoding=utf-8

" line numbering
set number
"set nonumber or set nonu

" set 256 colors in vim / assumes bash env of TERM=xterm-256color
set t_Co=256

" define leader key
let mapleader=','

" split navigations - use ctrl and navigation keys to move to a new window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map F2 to toggle NERDTree
map <F2> :NERDTreeToggle<CR>

" close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" command in normal mode to open a terminal when programming;  :Term
"command T :rightbelow :terminal ++rows=15


" Python Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" Other languages indentation
au BufNewFile,BufRead *.rb, *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

" add python debug breakpoint after line (,b) or before line (,B)
au FileType python map <silent> <leader>b oimport pdb; pdb.set_trace()<esc>
au FileType python map <silent> <leader>B Oimport pdb; pdb.set_trace()<esc>

"define BadWhitespace before using in a match
"highlight BadWhitespace ctermbg=red guibg=darkred

" Flagging Uncecessary Whitespece
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" highlighting
"let python_highlight_all=1
"syntax on 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" https://vimawesome.com/ to check out nice plugins

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" File manager -- NERDTree
Plugin 'scrooloose/nerdtree'

" Autocompletion with jedi
Plugin 'davidhalter/jedi-vim'
"TODO need to install jedi for OS; apt install vim-python-jedi
" map autocomplete keys
inoremap <leader>, <C-N>
"inoremap <leader>. <C-X><C-O> 

" Improved folding
Plugin 'tmhedberg/SimpylFold'
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar (instead of za)
nnoremap <space> za
" Want to see docstrings for folded code?
let g:SimpylFold_docstring_preview=1

" python PEP8 checking
Plugin 'nvie/vim-flake8'

" syntax checking on exit
"Plugin 'scrooloose/syntastic'

" Improved Python Indentation
"Plugin 'vim-scripts/indentpython.vim'

" Search anything Vim with ctrl-p
"Plugin 'kien/ctrlp.vim'

" Git integration
"Plugin 'tpope/vim-fugitive'

" Power status bar for a lot of extra information
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" vim-solidity
"Plugin 'TovarishFin/vim-solidity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set dark background - seems to be needed from tmux to retain the same colors
set background=dark

