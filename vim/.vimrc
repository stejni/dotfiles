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
" Requires npm install -g jshint
" sweet linting/error checking. Works on save
Bundle 'othree/vim-autocomplpop'
" Auto complete
Bundle 'L9'
" L9 lib for autocomplpop
Bundle 'marijnh/tern_for_vim'
" Code analysis for JS, must run:
" npm install in bundle directory after install
Bundle 'kien/rainbow_parentheses.vim'
" Rainbow braces
Bundle 'rking/ag.vim'
"ag search for Vim, requires Ag - the silver surfer (a faster Ack)
" use::Ag [options] {pattern} [{directory}] 
Bundle 'scrooloose/nerdcommenter'
" Enables quick comment/uncomment of several lines
Bundle 'mhinz/vim-signify'
" Enables indication of edited or removed lines from version control
Bundle 'sjl/gundo.vim'
" Shows graphical undo tree
Bundle 'bling/vim-airline'
" Status bar
" Bundle 'bling/vim-bufferline'
" Shows list of buffers in statusline
" Seems to not be needed as airline dos it automatically


filetype plugin indent on
let mapleader = " "

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

" Key mappings

" Splitting
" Navigate splits
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" PLUGINS
"
let g:EasyMotion_leader_key = '<Leader>'

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
map <leader>b :CtrlPBuffer<Enter>
map <leader>g :GundoToggle
"let g:ctrlp_map = '<leader>p'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_detect_modified=1
let g:airline_theme='serene'

" Rainbow parenthesis always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
