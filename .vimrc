" vim:foldmethod=marker:foldlevel=0

" Plugin initialization and mapleader {{{
 
call plug#begin()               " Initialize plugins with vim-plug 

" Plugins
if !has('nvim')
    Plug 'noahfrederick/vim-neovim-defaults'
endif
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'dbakker/vim-paragraph-motion'
Plug 'rking/ag.vim'
" Plug 'fholgado/minibufexpl.vim'
" Plug 'benekastah/neomake'
" Plug 'Valloric/YouCompleteMe'

call plug#end()                 " Finish plugin initialization

let mapleader = "\<Space>"      " Set leader to Space


" }}} ====================================================================
" Moving around {{{

" Use j/k for screen lines, and gj/gk for actual lines (swap their behavior)
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
nnoremap gj j
vnoremap gj j
nnoremap gk k
vnoremap gk k


" }}} ====================================================================
" Indentation, spacing, etc. {{{ 

set expandtab           " Expand tabs to spaces
set tabstop=4           " Hard tabs are 4 spaces
set shiftwidth=4	    " Autoindent in multiples of 4 spaces
set breakindent         " Indent wrapped lines the same as the first line 
set cino=:0             " Indent 'case' the same as 'switch' in switch/case
set nojoinspaces        " Only one space after .!? when formatting paragraphs

" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" F4 to toggle line wrapping
nnoremap <F4> :set wrap!<CR>:set wrap?<CR> 


" }}} ====================================================================
" Looks {{{

syntax on               " Syntax highlighting on
set number              " Show line numbers 
set ruler               " Show ruler in status line 
set cursorline          " Underline current line
set colorcolumn=81      " Color-column just beyond 80 char
highlight ColorColumn ctermbg=7


" }}} ====================================================================
" Clipboard {{{ 

" Clipboard key remappings
nnoremap <Leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <Leader>y "+y
nnoremap <Leader>d "+d
nnoremap <Leader>D "+D
vnoremap <Leader>d "+d
nnoremap <Leader>x "+x
nnoremap <Leader>X "+X
vnoremap <Leader>x "+x
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Autoindent on paste
" nnoremap p p=`]
" nnoremap P P=`]


" }}} ====================================================================
" Searching {{{

set ignorecase          " Treat all-lowercase searches as case-insensitive
set smartcase           " If any uppercase letters, treat as case-sensitive

" Turn off search highlighting with \
nnoremap \ :nohlsearch<CR>


" }}} ====================================================================
" Folding {{{ 

set foldmethod=indent   " Fold based on indentation
set foldnestmax=10      " Maximum fold depth
set foldlevelstart=10   " Starting depth of folds

" Keymap for toggling folds
nnoremap <Leader>z za


" }}} ====================================================================
" Windows, buffers, etc. {{{

set hidden              " Hides buffers instead of closing them 
set splitright          " Open new windows to right and bottom 
set splitbelow

" Moving between windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" }}} ====================================================================
" Miscellaneous {{{

set noswapfile              " No swapfiles 
let g:netrw_gx="<cWORD>"    " Use WORDs when opening URLs 
command E Explore           " File explore with just E 


" }}} ====================================================================
" NerdTree {{{

command NT NERDTreeToggle   " Custom command

" Custom keybind
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" Do not close NerdTree after opening file
let NERDTreeQuitOnOpen = 0 


" }}} ====================================================================
" CtrlP {{{

" Use Vim's working directory as CtrlP's working directory
let g:ctrlp_working_path_mode = 0


" }}} ====================================================================
" EasyMotion {{{ 

" Plugs:
map <Leader>f <Plug>(easymotion-f)
map <Leader>F <Plug>(easymotion-F)
map <Leader>t <Plug>(easymotion-t)
map <Leader>T <Plug>(easymotion-T)
map <Leader>w <Plug>(easymotion-w)
map <Leader>W <Plug>(easymotion-W)
map <Leader>b <Plug>(easymotion-b)
map <Leader>B <Plug>(easymotion-B)
map <Leader>e <Plug>(easymotion-e)
map <Leader>E <Plug>(easymotion-E)
map <Leader>ge <Plug>(easymotion-ge)
map <Leader>gE <Plug>(easymotion-gE)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>n <Plug>(easymotion-n)
map <Leader>N <Plug>(easymotion-N)


" }}} ====================================================================
" Tagbar {{{

command TB TagbarToggle     " Custom commands
command Tb TagbarToggle

" Custom keymap
nnoremap <silent> <F10> :TagbarToggle<CR>

let g:tagbar_autoclose = 1      " Autoclose after open
let g:tagbar_sort = 0           " Sort tags by order in file (not by alpha)

" }}} ====================================================================
" Improved paragraph motion {{{
let g:ip_skipfold=1         " Skip folds

" }}}
