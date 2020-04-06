" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200 " Keep 200 lines of command line history
set ruler " Show the cursor position all the time
set showcmd " Display incomplete commands
set wildmenu " Display completion matches in a status line
set ignorecase " Ignore case when searching
set smartcase " Don't ignore explicit case

" Show @@@ in the last line if it is truncated.
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" In many terminal emulators the mouse works just fine.
set mouse=a

" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid, when inside an event handler
" (happens when dropping a file on gvim) and for a commit message (it's
" likely a different one than last time).
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" modelines have historically been a source of security/resource
" vulnerabilities -- disable by default, even when 'nocompatible' is set
set nomodeline

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Color column 80
set colorcolumn=80

" Show line numbers
set number

" Indent four spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" Material Palenight colorscheme
syntax on
let base16colorspace=256
set termguicolors " Use terminal colors since cmd.exe is ISO-8613-3 compliant
colorscheme base16-material-palenight

" Show some whitespace characters
set listchars=tab:>~,trail:~
set list
