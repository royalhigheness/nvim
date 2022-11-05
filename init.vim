set nu
syntax enable
set nocompatible
colo habamax

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""''

augroup toggle_relative_number
autocmd InsertEnter * setlocal norelativenumber
autocmd InsertLeave * setlocal relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'

call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'fatih/vim-go', { 'do' : 'GoInstallBinaries' }
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'
call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""''
set autoindent         "inherit indentation from currentline
set shiftwidth=4       "
set softtabstop=4      "Number of spaces that a tab counts for while performming editing operations
set tabstop=4          "How many spaces a tab should rep in a file
set backspace=indent,start,eol
set linebreak

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','

"""buffers"""
nnoremap <Leader>buf :buffer<CR>
nnoremap <Leader>p :bperv<CR>
nnoremap <Leader>n :bnext<CR>
"""windows split"""
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <Leader>vs vsplit<CR>
nnoremap <Leader>hs :split<CR>
"""tab"""
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp :tabprev<CR>
nnoremap <Leader>tnw :tabnew<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
match ErrorMsg '\s\+$'                   "Highlight trailing whitespaces 
autocmd BufWritePre * :%s/\s\+$//e       "Remove trailing whitespaces automatically
