let $VIMRUNTIME='/usr/share/vim/vim74' 

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

