set nocompatible              " be iMproved, required
filetype off                  " required 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"-----------------------------------------------------------------------------=
" Vundle ---------------------------------------------------------------------=
"-----------------------------------------------------------------------------=
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"-----------------------------------------------------------------------------=
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"
"-----------------------------------------------------------------------------=
" Vundle Plugins -------------------------------------------------------------=
"-----------------------------------------------------------------------------=
Plugin 'tpope/vim-fugitive'                             " fugitive
Plugin 'scrooloose/nerdtree'                            " NERD TREE
Plugin 'flazz/vim-colorschemes'                         " colors
Plugin 'ap/vim-css-color'                          		" css colors show in terminal
Plugin 'scrooloose/syntastic'                           " syntax checking
Plugin 'ntpeters/vim-better-whitespace'         		" improved space highlighting
Plugin 'nathanaelkane/vim-indent-guides'        		" indent guides

Plugin 'bling/vim-airline'                              " airline
Plugin 'vim-airline/vim-airline-themes'                 " airline themes
Plugin 'ntpeters/vim-airline-colornum'          		" airline current row highlight

Plugin 'ehamberg/vim-cute-python'                       " python reserved words to symbols
Plugin 'airblade/vim-gitgutter'                         " git changes on left

Plugin 'tpope/vim-eunuch'                               " sudowrite, mkdir, chmod, find
Plugin 'tpope/vim-surround'                             " surroundings
Plugin 'tpope/vim-repeat'                             	" required for . repeats on tpope/vim-surround commands
Plugin 'tpope/vim-commentary'                           " gcc, gc commands for GoComment
Plugin 'tpope/vim-sensible'                             " gcc, gc commands for GoComment

Plugin 'pangloss/vim-javascript'                        " js code validation
Plugin 'Lokaltog/vim-easymotion'                        " \\b \\w etc
Plugin 'bkad/camelcasemotion'							" camelcase word movement enhancements

Plugin 'mhinz/vim-startify'                             " vim start-screen

Plugin 'MarcWeber/vim-addon-mw-utils'           		" following 4 for snippets/snipmate
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'wincent/command-t'                              " fast file/reference navigation

Plugin 'godlygeek/tabular'								" tab guides
Plugin 'plasticboy/vim-markdown'						" markdown syntax
Plugin 'ekalinin/dockerfile.vim'						" docker syntax
Plugin 'chase/vim-ansible-yaml'							" ansible, yaml syntax
"-----------------------------------------------------------------------------=
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" non-Plugin stuff after this line
"
"-----------------------------------------------------------------------------=
" NORMAL VIM SETTINGS --------------------------------------------------------=
"-----------------------------------------------------------------------------=
set relativenumber
" uncomment below to override relativenumbers 0 at current line
set number
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" FORMATTING -----------------------------------------------------------------=
"-----------------------------------------------------------------------------=
set tabstop=4       " tab size
set shiftwidth=4    " size of an indent
set nowrap          " no line wrap
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" UNDO SETTINGS --------------------------------------------------------------=
"-----------------------------------------------------------------------------=
set undofile " Maintain undo history
set undodir=~/.vim-undodir
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" COLOR SCHEME ---------------------------------------------------------------=
"-----------------------------------------------------------------------------=
set t_Co=256        " suport 256 colors
colorscheme Monokai " colorscheme
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" CUSTOM SETTINGS ------------------------------------------------------------=
"-----------------------------------------------------------------------------=
map <SPACE> <leader>
" Enable Camelcase word navigation
call camelcasemotion#CreateMotionMappings('<leader>')
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" CURSOR LINE/COLUMN HIGHLIGHTING --------------------------------------------=
"-----------------------------------------------------------------------------=
set cursorline                                  " current cursor line highlight
highlight CursorLine cterm=NONE ctermbg=black   " current cursor highlight color>
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" VIM AIRLINE SETTINGS--------------------------------------------------------=
"-----------------------------------------------------------------------------=
let g:gitgutter_sign_removed_first_line = "_^" " hacky-fix
let g:airline_theme = "murmur" " airline colorscheme
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" INDENT GUIDES SETTINGS------------------------------------------------------=
"-----------------------------------------------------------------------------=
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=darkgrey
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" PYTHON FILE SETTINGS--------------------------------------------------------=
"-----------------------------------------------------------------------------=
autocmd BufEnter,BufRead,BufEnter *.py setlocal expandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead,BufEnter *.py IndentGuidesEnable
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" YAML FILE SETTINGS----------------------------------------------------------=
"-----------------------------------------------------------------------------=
" bundle for yaml needs filetype ansible
au BufNewFile,BufRead,BufEnter *.yaml,*.yml set filetype=ansible
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" HTML FILE SETTINGS----------------------------------------------------------=
"-----------------------------------------------------------------------------=
autocmd BufEnter,BufRead,BufEnter *.html set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.vue set filetype=html
"-----------------------------------------------------------------------------=
"
"-----------------------------------------------------------------------------=
" EDIT/SPLIT/NEW-TAB ---------------------------------------------------------=
"-----------------------------------------------------------------------------=
" accessing files in cur buffer dir
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
map ,v :vsplit <C-R>=expand("%:p:h") . "/" <CR>
"-----------------------------------------------------------------------------=

"-----------------------------------------------------------------------------=
" EXPIREMENTAL SETTINGS-------------------------------------------------------=
"-----------------------------------------------------------------------------=
" creating a folder if trying to save a buffer that lacks an existing
" directory
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END
"-----------------------------------------------------------------------------=
