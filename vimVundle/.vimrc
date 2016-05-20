""""" Default Vim settings
set nocompatible            " use vim only
filetype off                " no auto file recognition?

" encoding
set encoding=utf-8

" line numbering
"set nu

" set 256 colors in vim / assumes bash env of TERM=xterm-256color
set t_Co=256

" define leader key
let mapleader='<space>'

" split navigations - use ctrl and navigation keys to move to a new window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map F2 to toggle NERDTree
map <F2> :NERDTreeToggle<CR>

" map 
inoremap <leader>, <C-N>
inoremap <leader>. <C-X><C-O>


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
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Other languages indentation
au BufNewFile,BufRead *.rb, *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flagging Uncecessary Whitespece
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Improved folding
Plugin 'tmhedberg/SimpylFold'

" Improved Python Indentation
Plugin 'vim-scripts/indentpython.vim'

" Python Auto-complete
Bundle 'Valloric/YouCompleteMe'
"TODO requires compilation (https://github.com/Valloric/YouCompleteMe)
" autoclose preview window
let g:ycm_autoclose_preview_window_after_completion=1
" go to definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntax checking on exit
Plugin 'scrooloose/syntastic'
" python PEP8 checking
Plugin 'nvie/vim-flake8'
" highlighting
let python_highlight_all=1
syntax on 

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  "https://github.com/jnurmine/Zenburn
  "TODO export TERM=xterm-256color / set t_Co=256 / $ cp
  "~/.vim/bundle/Zenburn/colors/Zenburn.vim ~/.vim/colors/.
  colorscheme zenburn
endif

" File manager -- NERDTree
Plugin 'scrooloose/nerdtree'

" Search anything Vim with ctrl-p
Plugin 'kien/ctrlp.vim'

" Git integration
"Plugin 'tpope/vim-fugitive'

" Power status bar for a lot of extra information
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



