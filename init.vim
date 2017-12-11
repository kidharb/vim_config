syntax on
color dracula
filetype plugin on

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=\ %{strftime('%c')}    "current time

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set autoread

set mouse=a
inoremap jj <ESC>
let mapleader = " "
nmap <Leader><Leader> <c-^>
map <C-n> :NERDTreeToggle<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'justinmk/vim-sneak'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mkitt/tabline.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'thaerkh/vim-indentguides'
Plugin 'mhinz/vim-startify'
Plugin 'kshenoy/vim-signature'
call vundle#end()
filetype plugin indent on

" This is for the comment plugin use <Leader>ci \ci
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'rb': { 'left': '#' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Airline tabs auto startup
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%H:%M")}'

"Indent guides auto startup
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indentguides_ignorelist = ['text']

"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
