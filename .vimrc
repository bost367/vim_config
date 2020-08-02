filetype plugin indent on                           " Determine filetype.
set encoding=utf-8
set nocompatible                                    " Disable vi compatibility.
set autoread                                        " Auto read when a file is changed from the outside.
set fileformat=unix                                 " File mode is unix.
set fileformats=unix,dos,mac                        " Detects unix, dos, mac file formats in that order.
set tabstop=4                                       " Number of spaces a tab counts for.
set shiftwidth=4                                    " When indenting with '>', use 4 spaces width.
set expandtab                                       " Turn a tab into spaces
set cursorline                                      " Highlights the current line.
set ruler                                           " Show cursor position in status bar.
set number                                          " Show line number.
set guifont=FiraCode\ Nerd\ Font\ Mono\ Retina:h11
syntax enable                                       " Enable syntax highlight.

"If vim-plug is not installed, create directory and download.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

colorscheme dracula

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Airline                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1                   "Enable Powerline font support.
let g:airline#extensions#keymap#enabled = 0         "Don't sow current mapping.
let g:Powerline_symbols='unicode'                   "Unicode support.
let g:airline#extensions#xkblayout#enabled = 0