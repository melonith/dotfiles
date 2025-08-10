" leader keys
let maplocalleader=" "
let mapleader=" "

" indentation and wrapping
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set linebreak
" set textwidth=129
set nowrap
syntax on

" Other
set number
set relativenumber
set ttyfast
set nospell
set showmode
set backspace=eol,start,indent

" Ruler
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %O%)
set showcmd

" undos and history
set undolevels=1000
set history=1000

" change vim's current working directory to the currently open file
set autochdir

" highlight searches like neovim does by default
set hlsearch

set mouse=a

set clipboard=unnamedplus

" Packages and settings
set nocompatible
filetype plugin on

" Custom keybinds
nnoremap <leader>f :Files!<CR>
nnoremap <leader>t :Tags!<CR>
nnoremap <leader>s :Rg!<CR>

let g:vimwiki_list = [{'path': '~/notes',
                      \ 'syntax': 'markdown', 'ext': 'md'}]

let g:vimwiki_global_ext = 0
