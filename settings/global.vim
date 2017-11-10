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
"set showtabline=1                     " not always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=			      " disable encryption
"set t_Co=256
let &t_Co=256


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
        set guioptions-=r  "remove right-hand scroll bar
        set guioptions-=L  "remove left-hand scroll bar
        if has('unix')
            if has('mac')
                "set guifont=Menlo\ for\ Powerline:h12 " Mac fonts
                set guifont=Source\ Code\ Pro\ for\ Powerline:h12 " Mac fonts
            else
                "set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10 " Ubuntu fonts or all other Linux distributions
                set guifont=Sauce\ Code\ Powerline\ 10 " Ubuntu fonts or all other Linux distributions
            endif
        elseif has('win32') || has('win64')
            set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
        endif
    endif
    "colorscheme molokai
    colorscheme solarized " need further tuning up
    set background=dark
catch
    colorscheme evening
    set background=dark
endtry
