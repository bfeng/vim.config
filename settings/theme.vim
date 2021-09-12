function MacGuiSettings()
    set guifont=Source\ Code\ Pro\ for\ Powerline:h13 " Mac fonts
    colorscheme solarized " need further tuning up
endfunction

function LinuxGuiSettings()
    "set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10 " Ubuntu fonts or all other Linux distributions
    set guifont=Sauce\ Code\ Powerline\ 10 " Ubuntu fonts or all other Linux distributions
endfunction

function WinGuiSettings()
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
endfunction

try
    colorscheme molokai
    set background=dark
    if has('gui_running')
        set guioptions-=r  "remove right-hand scroll bar
        set guioptions-=L  "remove left-hand scroll bar
        if has('unix')
            if has('mac')
                call MacGuiSettings()
            else
                call LinuxGuiSettings()
            endif
        elseif has('win32') || has('win64')
            call WinGuiSettings()
        endif
    endif
catch
    colorscheme evening
    set background=dark
endtry
