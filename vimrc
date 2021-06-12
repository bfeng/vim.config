if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles//repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/bundles/')

" Let dein manage dein
" Required:
call dein#add('~/.vim/bundles//repos/github.com/Shougo/dein.vim')

call dein#add('wsdjeg/dein-ui.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('sheerun/vim-polyglot')
call dein#add('tpope/vim-fugitive')
call dein#add('preservim/nerdtree')
call dein#add('preservim/nerdcommenter')
call dein#add('ryanoasis/vim-devicons')
call dein#add('ervandew/supertab')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('gerw/vim-latex-suite')
call dein#add('endel/vim-github-colorscheme')
call dein#add('honza/vim-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif
"
" Global settings
source ~/.vim/settings/global.vim

" Theme settings
source ~/.vim/settings/theme.vim

" Indent settings
source ~/.vim/settings/indent.vim

" Plugin settings
source ~/.vim/settings/plugin.vim

" Key bindings: shortcuts
source ~/.vim/settings/maps.vim
