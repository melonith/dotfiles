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

" Changes depending on file extensions
autocmd BufRead,BufNewFile *.sh set textwidth=200

autocmd BufRead,BufNewFile *.txt setlocal spell
" autocmd BufRead,BufNewFile *.txt set textwidth=79

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set wrap
" autocmd BufRead,BufNewFile *.md set textwidth=79

autocmd BufRead,BufNewFile *.c set noexpandtab
autocmd BufRead,BufNewFile *.c set shiftwidth=8
autocmd BufRead,BufNewFile *.c set tabstop=8
autocmd BufRead,BufNewFile *.h set shiftwidth=8
autocmd BufRead,BufNewFile *.h set tabstop=8
autocmd BufRead,BufNewFile *.h set shiftwidth=8

" Packages and settings
set nocompatible
filetype plugin on

" Custom keybinds
nnoremap <leader>f :Files!<CR>
nnoremap <leader>t :Tags!<CR>
nnoremap <leader>s :Rg!<CR>

function! Notes()
    let l:notes_dir = expand("~/notes/")
    let l:filename = l:notes_dir . strftime("%Y-%m-%d.md")
    execute "edit " . l:filename
    execute "normal! G"
endfunction

nnoremap <leader>n :call Notes()<CR>

function! Todo()
    let l:fname = expand('%')
    let l:line = getpos('.')[1]
    let l:notes_dir = expand("~/notes/")
    let l:filename = l:notes_dir . "todo.md"
    let l:content = (filereadable(l:filename)) ? readfile(l:filename) : []
    let l:content += ["- [ ] TODO [[" . l:fname . ":" . l:line . "]]"]
    call writefile(l:content, l:filename)
    execute "edit " . l:filename
    execute "normal! G"
endfunction

nnoremap <leader>d :call Todo()<CR>

