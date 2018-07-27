let $VIMRUNTIME='/usr/share/vim/vim81'

filetype on

au BufNewFile,BufRead *.cup set filetype=cup
au BufNewFile,BufRead *.spl set filetype=spl

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

set laststatus=2  

set scrolloff=8
set number

" 2 lines command line:
set ch=2

"visuals bell
set vb 

set noswapfile


set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"highlighted search:
set hlsearch
set incsearch

syntax on

set bg=dark

set cursorline

"disable syntax on too long lines
set synmaxcol=2048

"hide mouse
set mousehide

set history=100

"better command-line completion
set wildmenu

"backspacing over indent, eol
set backspace=indent,eol,start

"let cursor move on char after eol 
set virtualedit=onemore

"always jump one char further with 0 and $
:noremap 0 g0
:noremap $ g$


"create backup files~ in dir:


"break only at space and tab
set linebreak

set smartindent


if &term =~ "xterm\\|rxvt"
" use an orange cursor in insert mode
let &t_SI = "\<Esc>]12;orange\x7"
" use a red cursor otherwise
let &t_EI = "\<Esc>]12;red\x7"
silent !echo -ne "\033]12;red\007"
" reset cursor when vim exits
autocmd VimLeave * silent !echo -ne "\033]112\007"
" use \003]12;gray\007 for gnome-terminal
endif

"disable arrow keys:
"noremap <UP> ""
"noremap! <UP> <ESC> 
"noremap <DOWN> ""
"noremap! <DOWN> <ESC> 
"noremap <LEFT> ""
"noremap! <LEFT> <ESC> 
"noremap <RIGHT> ""
"noremap! <RIGHT> <ESC> 
"
"noremap <DELETE> ""
"noremap! <DELETE> <ESC>

"fix spelling mistakes:

iab ihc ich
iab nihct nicht
iab syso System.out.println(

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'

 Plug 'lervag/vimtex'

call plug#end()

let g:vimtex_compiler_latexmk = {'callback' : 0}

