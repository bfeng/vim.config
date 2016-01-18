" Airline settings
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

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
let g:airline_theme = 'solarized'

"let g:airline_symbols.space = "\ua0"

" NERDTree and NERDTree tabs settings
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.pyc$']
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_focus_on_files=1

" IndentLine settings
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
