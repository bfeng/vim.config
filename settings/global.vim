set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=4
set title
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set encoding=utf-8
set laststatus=2
set clipboard+=unnamed
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=5                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=			      " disable encryption
set t_Co=256

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup

set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

try
	" support airline icons and italic fonts in molokai
	if has('gui_running')
		set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
	endif
	colorscheme molokai
catch
	colorscheme default
endtry
