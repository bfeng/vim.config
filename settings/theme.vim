try
    " support airline icons and italic fonts in molokai
    if has('gui_running')
        set guioptions-=r  "remove right-hand scroll bar
        set guioptions-=L  "remove left-hand scroll bar
        if has('unix')
            if has('mac')
                set guifont=Source\ Code\ Pro\ for\ Powerline:h13 " Mac fonts
            else
                "set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10 " Ubuntu fonts or all other Linux distributions
                set guifont=Sauce\ Code\ Powerline\ 10 " Ubuntu fonts or all other Linux distributions
            endif
        elseif has('win32') || has('win64')
            set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
        endif
    endif
    colorscheme molokai
    "colorscheme solarized " need further tuning up
    set background=dark
catch
    colorscheme evening
    set background=dark
endtry
