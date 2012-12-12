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

"highlighted search:
set hlsearch

syntax on

"disable syntax on too long lines
set synmaxcol=2048

"hide mouse
set mousehide

set history=100

"better command-line completion
set wildmenu

"fix spelling mistakes:

iab ihc ich
iab nihct nicht

