" set the font for the gui application
" We will change this per OS
if has("win64") || has("win32") || has("win16")
    " Here wa have windows, and I don't know what do do here
    set guifont=Source\ Code\ Pro\ for\ Powerline:h12
else
    let g:os = substitute(system('uname'), '\n', '', '')
    if g:os == "Linux"
        " If here we have Linux, and we are using gvim
        set guifont=Monospace\ Regular\ 10
    else
        " If here, we must have Mac, and are using MacVim
        set guifont=Source\ Code\ Pro\ for\ Powerline:h12
    endif
endif

" turn off gui-only toolbars, etc
set guioptions=agitc

" use the system clipboard for the default clipboard
set clipboard=unnamed
