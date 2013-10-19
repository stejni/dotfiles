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
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
" Buffer search
Bundle 'tpope/vim-fugitive'
" Git support/functions
Bundle 'pangloss/vim-javascript'
" Javasccript foratting
Bundle 'maksimr/vim-jsbeautify'
" more js syntax options
Bundle 'scrooloose/syntastic'
" sweet linting/error checking. Works on save


filetype plugin indent on
let mapleader = ","

" :BundleInstall(!) to install bundles

set number	"line numbers
set relativenumber "Only current line has actual line number, others have relative copmared to current
set ttyfast "Faster scrolling etc. 
set cursorline! " Highlight current line

" Visualize tabs, trailing whitespaces and funny characters
" "
" http://www.reddit.com/r/programming/comments/9wlb7/proggitors_do_you_like_the_idea_of_indented/c0esam1
" " https://wincent.com/blog/making-vim-highlight-suspicious-characters
" Make tabs and trailing whitespace visible
"set list
"set lcs=tab:»·   "show tabs
"set lcs+=trail:· "show trailing spaces
" Currently not workgin, CBF
"
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7
set sidescrolloff=15
set sidescroll=1

imap jk <Esc>

set showmatch
set showmode
set showcmd
set ruler
set title
set wildmenu
set matchtime=3 " show bracket match for .9 seconds
set matchpairs+=<:>

set ignorecase
set smartcase
set smartindent
set smarttab

set tabstop=4
set shiftwidth=4
set history=100

set mouse=a "Mouse support in all modes
set hlsearch
set incsearch

" Starting from vim 7.3 undo can be persisted across sessions
" "
" http://www.reddit.com/r/vim/comments/kz84u/what_are_some_simple_yet_mindblowing_tweaks_to/c2onmqe
if has("persistent_undo")
    set undodir=~/.vim/undodir
        set undofile
endif

" Return to last edit position when opening files (You want this!)
 autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
 set viminfo^=%

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


" Will allow you to use :w!! to write to a file using sudo if you forgot to
" sudo
" " vim file (it will prompt for sudo password when writing)
" "
"  http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/96492#96492
cmap w!! %!sudo tee > /dev/null %



" PLUGINS
"

let g:ctrlp_map = '<c-p>'
