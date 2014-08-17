set nocompatible  " Required
filetype off      " Required

set rtp+=~/.vim/bundle/Vundle.vim " Required
call vundle#begin()               " Required

" Plugins start here

Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ap/vim-css-color'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-haml' " Does haml, sass and scss
Plugin 'kchmck/vim-coffee-script'
Plugin 'junegunn/seoul256.vim'
Plugin 'goatslacker/mango.vim'
Plugin 'croaker/mustang-vim'
Plugin 'chriskempson/vim-tomorrow-theme'

" Plugins end here

call vundle#end()           " Required
filetype plugin indent on   " Required

" Plugin settings start here

" Enable mouse in terminals
if has('mouse')
  set mouse=a
endif

" Show hard tabs and trailing whitespace.
set list
set listchars=tab:»·,trail:·

" Set color scheme
colorscheme mustang

" Set syntax highlighting
syntax on

" Custom syntax highlighting
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead Berksfile set filetype=ruby

" Set default font
set guifont=Menlo:h13

" Perform spell-checking on strings and comments.
set spell

" Highlight the 80th column.
set colorcolumn=80

" Highlight all search matches.
set hlsearch

" Jump to search results while typing. Pressing enter actually jumps to the
" result, pressing escape goes back to the cursor.
set incsearch

" Perform case-insensitive searching when the search pattern contains only
" lowercase letters.
set ignorecase
set smartcase

" Remove trailing spaces on save.
autocmd BufWritePre * :%s/\s\+$//e

" Load filetype plugins and indentation rules.
filetype plugin indent on

" Copy the indent from the previous line when starting a new line.
" Automatically indent between curly braces and indent keywords.
set autoindent
set smartindent

" Use two-space indents.
set expandtab
set shiftwidth=2

set tabstop=2

" GUI options:
"  * -r: Disable right scroll bar
"  * -L: Disable left scroll bar
"  * +c: Use console dialogs
set guioptions-=r
set guioptions-=L
set guioptions+=c

" Show line numbers.
set number

" Highlight the current line.
set cursorline

" Set the window title with the current file name, status and directory.
set title

" Disable beeping and visual bell (flashing the terminal window).
set visualbell t_vb=

" Set leader to , and remap , to \.
noremap \ ,
let mapleader = ","

" Set keybindings below

" Clear search result highlighting.
nmap <leader>n :nohlsearch<CR>

" Map CtrlP
nmap <leader>f :CtrlP<CR>

" Map AG
nmap <leader>F :Ag<space>

" Tell Ag to use ack
let g:agprg="/usr/local/bin/ack --column"

" Set ignores
set wildignore+=*/node_modules/*,*/lib-bower/*,*.min.js,*/public/*

" No Swap File
set noswapfile

