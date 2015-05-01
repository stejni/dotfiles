set nocompatible
filetype off

" you must install vundle : git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github

" Bundle 'Lokaltog/vim-easymotion'
" multi line navigation with 2 charaters instead of one
" s{char}{char} - go to matching location 
Bundle 'justinmk/vim-sneak'
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
" Buffer search
Bundle 'tpope/vim-fugitive'
" Git support/functions
Bundle 'pangloss/vim-javascript'
" Javasccript foratting
Bundle 'maksimr/vim-jsbeautify'
Bundle 'w0ng/vim-hybrid'
" more js syntax options
Bundle 'scrooloose/syntastic'
" Comment blocks of code
" Requires npm install -g jshint or -g eslint
" sweet linting/error checking. Works on save
"Bundle 'othree/vim-autocomplpop'
" Auto complete does not require python
Bundle 'Valloric/YouCompleteMe'
" Auto complete - requires python
" Also requires compilation, look it up
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
Bundle 'SirVer/ultisnips'
" Snippets
Bundle 'honza/vim-snippets'

Bundle 'jiangmiao/auto-pairs'
" Auto close parens
Bundle 'tpope/vim-surround'
" Surrounds using s command + motions
Bundle 'laurentgoudet/vim-howdoi'

Bundle 'wellle/targets.vim'
" Allows more change inner actions, eg comma seperated list, and next
" occurence
Bundle 'Shutnik/jshint2.vim'

" Allows to step through history of a file in git
Bundle 'junkblocker/git-time-lapse'

" Allows both YCM and UltiSnips to work on tab
Bundle 'ervandew/supertab'

" Nerdtree - just to see the dir structure
Bundle 'scrooloose/nerdtree'

" Color schemes
Bundle 'tomasr/molokai'
" Dark grey, relatively easy on eyes
Bundle 'jordwalke/flatlandia'

"Very low contrast theme
Bundle 'junegunn/seoul256.vim'

"Yellow bg - vwey nice
Bundle "sandeepsinghmails/Dev_Delight"

" Most popular scheme
Bundle "altercation/vim-colors-solarized.git"

Bundle 'ruanyl/vim-fixmyjs'
" Automatically fixes linting style errors
" requires npm install -g fixmyjs

" JS Doc
" :JSDoc on function definition
Bundle 'heavenshell/vim-jsdoc'
" Previews replacements
Bundle 'osyo-manga/vim-over'

" Start menu and easier Session handling
" :SLoad    load a session
" :SSave    save a session
" :SDelete  delete a session
Bundle 'mhinz/vim-startify'
let g:startify_session_persistence = 1

" Easy commenting
" gcc - comment out a line (optional number)
" gc{motion} -- comment out target of motion (ex. gcap -comment out a
" paragraph)
Bundle 'tpope/vim-commentary'

" Camel Case text objects
" I have mapped them to W, B, E
Bundle 'bkad/CamelCaseMotion'

" Colortheme
Bundle 'hhff/SpacegrayEighties.vim'



call vundle#end()
filetype plugin indent on

let mapleader = " "
"let g:solarized_termcolors=256
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


" Buffer navigation
nnoremap <leader>H :bp <CR>
nnoremap <leader>L :bn <CR> 


map <silent> W <Plug>CamelCaseMotion_w
map <silent> E <Plug>CamelCaseMotion_e
map <silent> B <Plug>CamelCaseMotion_b
omap <silent> iW <Plug>CamelCaseMotion_iw
xmap <silent> iW <Plug>CamelCaseMotion_iw
omap <silent> iE <Plug>CamelCaseMotion_ie
xmap <silent> iE <Plug>CamelCaseMotion_ie
omap <silent> iB <Plug>CamelCaseMotion_ib
xmap <silent> iB <Plug>CamelCaseMotion_ib

" Saving 
nnoremap <leader>w :w <CR>


set clipboard^=unnamedplus " Enable copy to clipboard  register: "+yy

" PLUGINS
"
" let g:EasyMotion_leader_key = '<leader><Space>'

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
map <leader>b :CtrlPBuffer<Enter>
map <leader>g :GundoToggle

" Git Time lapse
nmap <Leader>gt <Plug>(git-time-lapse)

" NERDTree 
map <leader>t :NERDTreeToggle<CR>
"let g:UltiSnips#ExpandSnippet = '``'
"let g:UltiSnipsJumpForwardTrigger = '<c-d>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-s>'

"let g:ctrlp_map = '<leader>p'
let g:syntastic_javascript_checkers = ['eslint']

let g:use_legacy_Fixmyjs = 1
noremap <Leader><Leader>f :Fixmyjs<CR>


" startify

let g:startify_bookmarks = [ '~/.vimrc'  ]

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_detect_modified=1
let g:airline_theme='serene'
:set laststatus=2
" Fix for airline only appearing in splits

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<nop>" "Nothing, so that Enter can be used
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" From : https://github.com/Valloric/YouCompleteMe/issues/420
" Lets us use return key to complete Ultisnips
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

"function! g:UltiSnips_Complete()
"	call UltiSnips_ExpandSnippet()
"	if g:ulti_expand_res == 0
"		if pumvisible()
"			return "\<C-n>"
"		else
"			call UltiSnips_JumpForwards()
"			if g:ulti_jump_forwards_res == 0
"				return "\<TAB>"
"			endif
"		endif
"	endif
"	return ""
"endfunction
"
"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsListSnippets="<c-e>"

" Rainbow parenthesis always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
