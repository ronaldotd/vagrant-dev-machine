set nocompatible

syntax on

set background=dark
colorscheme PaperColor

set encoding=UTF-8

set number
set relativenumber

set tabstop=2
set shiftwidth=2
set expandtab

set laststatus=2

set cursorline

set backspace=indent,eol,start

let g:NERDTreeWinSize=40

let g:flake8_show_in_gutter=1

nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>
nnoremap <Up> :Ag<CR>
nnoremap <Down> :Files<CR>

" close vim when nerdtree is the only window left
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd FileType python setlocal tabstop=4 shiftwidth=4
