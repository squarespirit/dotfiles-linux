" Initialize plugins with vim-plug
call plug#begin()

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
" Plug 'fholgado/minibufexpl.vim'
" Plug 'benekastah/neomake'
" Plug 'Valloric/YouCompleteMe'

" Finish plugin initialization
call plug#end()

" Set leader to Space
let mapleader = "\<Space>"

" Show line numbers and ruler
set number ruler

" Expand tabs to spaces and use indent = 4 spaces
set expandtab tabstop=4 shiftwidth=4	

" Indent wrapped lines same amount as first line
set breakindent

" Indent case: the same as switch in switch/case block
set cino=:0

" Hides buffers instead of closing them
set hidden

" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" 80 character color-column
set colorcolumn=80
highlight ColorColumn ctermbg=7

" F4 to toggle line wrapping
map <F4> :set wrap!<CR>:set wrap?<CR>

" Clipboard key remappings
nnoremap <Leader>y "+y
nnoremap <leader>y "+y
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
nnoremap p p=`]
nnoremap P P=`]

" Open new windows to right and bottom
set splitbelow
set splitright

" Moving between windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" No swap files
set noswapfile

" Syntax highlighting on
syntax on

" All-lowercase search = case-insensitive
" Any uppercase letters = case-sensitive
set ignorecase
set smartcase

" Use WORDs when opening URLs.
" This avoids cutting off URL params (after '?') and anchors (after '#'). 
" From http://vi.stackexchange.com/q/2801/1631
let g:netrw_gx="<cWORD>"

" Code folding based on indentation
set foldmethod=indent
" Do not fold at first
set nofoldenable

" File explorer
command E Explore

" Turn off highlighting with \
nnoremap \ :nohlsearch<CR>

" Plugins =============================

" NerdTree
" Open with :NT
command NT NERDTreeToggle
" Do not close NerdTree after opening file
let NERDTreeQuitOnOpen = 0 

" CtrlP
" use Vim's working directory as CtrlP's working directory
let g:ctrlp_working_path_mode = 0
" Open CtrlP in buffer mode with ^B
nnoremap <C-B> :CtrlPBuffer<CR>

" Easymotion
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

" Tagbar
" Custom command
command TB TagbarToggle
command Tb TagbarToggle

" Improved paragraph motion
" Skip folds
let g:ip_skipfold=1
