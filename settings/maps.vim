" NERDTree toggle
nnoremap <silent> <F2> :NERDTreeMirrorToggle<CR>

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" comment
map <Leader><Leader> <Leader>c<space>

" next and prev tab
noremap <F7> gT
noremap <F8> gt
