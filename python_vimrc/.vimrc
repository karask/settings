""""" Default Vim settings
set nocompatible            " use vim only
filetype off                " no auto file recognition?

" encoding
set encoding=utf-8

" line numbering
set nu
"set nonumber

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

" map autocomplete keys
inoremap <leader>, <C-N>
"inoremap <leader>. <C-X><C-O>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar (instead of za)
nnoremap <space> za
" Want to see docstrings for folded code?
let g:SimpylFold_docstring_preview=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
highlight BadWhitespace ctermbg=red guibg=darkred

" Flagging Uncecessary Whitespece
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" https://vimawesome.com/ to check out nice plugins

" Improved folding
Plugin 'tmhedberg/SimpylFold'

" Improved Python Indentation
Plugin 'vim-scripts/indentpython.vim'

" Python Auto-complete
Plugin 'valloric/youcompleteme'
"TODO requires compilation (https://github.com/ycm-core/YouCompleteMe#installation)

" uses python binding from the first python in path (e.g. venv's!)
let g:ycm_python_binary_path = 'python'

" autoclose preview window
let g:ycm_autoclose_preview_window_after_completion=1
" go to definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntax checking on exit
Plugin 'scrooloose/syntastic'
" python PEP8 checking
Plugin 'nvie/vim-flake8'
" highlighting
"let python_highlight_all=1
"syntax on 

" File manager -- NERDTree
Plugin 'scrooloose/nerdtree'

" Search anything Vim with ctrl-p
Plugin 'kien/ctrlp.vim'

" Git integration
"Plugin 'tpope/vim-fugitive'

" Power status bar for a lot of extra information
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" vim-go
Plugin 'fatih/vim-go'

" vim-solidity
Plugin 'TovarishFin/vim-solidity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set dark background - seems to be needed from tmux to retain the same colors
set background=dark

