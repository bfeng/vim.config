" Airline settings
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#close_symbol = 'X'
" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_theme = 'molokai'
"let g:airline_theme = 'solarized'

"let g:airline_symbols.space = "\ua0"

" NERDTree and NERDTree tabs settings
let g:NERDTreeMinimalUI=1
let g:NERDTreeIgnore=['\.pyc$', '\.class$', '\.o$']
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_focus_on_files=1

" Tag list settings
let Tlist_Use_Right_Window = 1

" IndentLine settings
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
