set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
set background=dark
set number
set cursorline
set showcmd
set hidden
set noswapfile
set nobackup
set nowritebackup
set mouse=a
set termguicolors
set clipboard=unnamedplus

set lazyredraw

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set incsearch
set hlsearch

let mapleader = "\<Space>"

nnoremap <leader>t :belowright terminal ++rows=10<CR>

call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme dracula
let g:airline_powerline_fonts = 0
nnoremap <leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
nnoremap <leader>f :Files<CR>

let g:ale_fixers = {
\   'python': ['black'],
\   'javascript': ['prettier'],
\   'yaml': ['prettier'],
\   'terraform': ['terraform'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['google-java-format'],
\   'go': ['gofmt'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'c': ['gcc'],
\   'cpp': ['g++'],
\   'go': ['golangci-lint'],
\}

let g:coc_global_extensions = [
\   'coc-pyright',
\   'coc-clangd',
\   'coc-java',
\   'coc-go',
\   'coc-tsserver',
\   'coc-yaml',
\   'coc-docker',
\   'coc-pairs'
\]
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

autocmd FileType c,cpp setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType go setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType terraform setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType dockerfile setlocal ts=2 sts=2 sw=2 expandtab
