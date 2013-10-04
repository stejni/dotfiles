set nocompatible
filetype off

" you must install vundle : git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github

Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomasr/molokai'

filetype plugin indent on

" :BundleInstall(!) to install bundles

set number	"line numbers

imap jk <Esc>

set showmatch
set showmode
set showcmd
set ruler
set title
set wildmenu
set matchtime=9 " show bracket match for .9 seconds
set matchpairs+=<:>

set ignorecase
set smartcase
set smartindent
set smarttab

set tabstop=4
set history=100

set mouse=a "Mouse support in all modes
set hlsearch
set incsearch


set autoread "update edited files
set backspace=eol,start,indent

syntax enable

colorscheme molokai
set encoding=utf8
set ffs=unix,dos,mac

set ai "auto indent
set si "amart indent

" Move a line of text using ALT+[jk] Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
