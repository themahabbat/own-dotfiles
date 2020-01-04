syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler

let mapleader=","

highlight Comment ctermfg=green
filetype plugin indent on

nnoremap <Leader>d dd
nnoremap <Leader>c ddO



function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>



call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()
