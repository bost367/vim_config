set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'drmikehenry/vim-fixkey'

Plugin 'derekwyatt/vim-fswitch'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set mousehide
set mouse=a
set nu
set guifont=Consolas:h12
set guioptions-=T
set encoding=utf8
set scrolloff=5         " 2 lines above/below cursor when scrolling
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that order
set ruler               " show cursor position in status bar
set title               " show file in titlebar
set cursorline          " highlights the current line
set winaltkeys=no       " turns of the Alt key bindings to the gui menu
set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set softtabstop=4
set smartindent         " smart auto indenting
set autoindent          " on new lines, match indent of previous line
set shiftround          " makes indenting a multiple of shiftwidth
set expandtab           " turn a tab into spaces
set laststatus=2        " the statusline is now always shown
set hidden              " allows making buffers hidden even with unsaved changes
set history=1000        " remember more commands and search history
set undolevels=1000     " use many levels of undo
set autoread            " auto read when a file is changed from the outside

imap [ []<LEFT>
imap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Colors an fonts                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Consolas:h10
set guioptions-=T
syntax enable
set background=dark
colorscheme solarized
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mapping                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <M-q> :NERDTreeToggle<CR>
function! ChangeBuf(cmd)
    if (&modified && &modifiable)
        execute ":w"
    endif
    execute a:cmd
endfunction
nnoremap <silent> <M-Right> :call ChangeBuf(":bn")<CR>
nnoremap <silent> <M-Left> :call ChangeBuf(":bp")<CR>
nnoremap <silent> <C-b> :YcmCompleter GoTo<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                YouCompleteMe                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_error_symbol = '☓'
let g:ycm_warning_symbol = '☝'
let g:ycm_filetype_specific_completion_to_disable = {
    \ 'csv' : 1,
    \ 'diff' : 1,
    \ 'gitcommit' : 1,
    \ 'help' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1,
    \ 'markdown' : 1,
    \ 'notes' : 1,
    \ 'pandoc' : 1,
    \ 'qf' : 1,
    \ 'svn' : 1,
    \ 'tagbar' : 1,
    \ 'text' : 1,
    \ 'unite' : 1,
    \ 'vimwiki' : 1
    \}
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               NERDTree                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Airline                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Enhanced-highlight                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
