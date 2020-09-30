" Plugin List
" Use `zR` to open all folds

" ### Install vim-plug {{{1
"----------------------------------------------------------------------------"
" install vim-plug if it's not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC | Startify | Ql
endif

" ### Function to build YCM {{{1
"----------------------------------------------------------------------------"
function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name: Name of the plugin
    " - status: 'installed', 'updated' or 'unchanged'
    " - force: set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
        !./install.py
    endif
endfunction

" ### PLUGIN LIST {{{1
"----------------------------------------------------------------------------"
call plug#begin('~/.vim/plugins')

" python specific plugins
Plug 'hynek/vim-python-pep8-indent'    " for auto indenting pep8 style
Plug 'python-rope/ropevim'             " refactoring, finding occurrences
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'nvie/vim-flake8'                 " PEP 8 checking
Plug 'jmcantrell/vim-virtualenv'       " virtualenv

" Javascript, JSX
Plug 'mxw/vim-jsx'                     " JSX Specific tools
Plug 'pangloss/vim-javascript'         " Javascript Highlighter
Plug 'elzr/vim-json'                   " JSON Formatting and pretty
Plug 'heavenshell/vim-prettier'        " Prettier Wrapper

" home screen
Plug 'mhinz/vim-startify'              " pretty start page

" project management
Plug 'ctrlpvim/ctrlp.vim'              " project file fuzzy-matcher
Plug 'dbakker/vim-projectroot'         " locate project
Plug 'scrooloose/nerdtree'             " file tree

" window management
Plug 'roman/golden-ratio'
Plug 'vim-scripts/tinykeymap'
Plug 'qpkorr/vim-bufkill'

" coding/editing
" This command broke the world, so I am removing it.
" Plug 'SirVer/ultisnips'                " textmate style snippets
Plug 'honza/vim-snippets'              " the actual snippest themselves
Plug 'tpope/vim-surround'              " add, change, delete surround text
Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'  " removes spurious whitespace
Plug 'tpope/vim-commentary'            " quickly toggle comments
Plug 'szw/vim-tags'
Plug 'mg979/vim-visual-multi'          " multiedit within Vim
Plug 'michaeljsmith/vim-indent-object' " for selecting indent objects
Plug 'kshenoy/vim-signature'           " visible marks
Plug 'vim-scripts/Align'
Plug 'godlygeek/tabular'               " align text, even tables
Plug 'Raimondi/delimitMate'            " autoclose opening characters

" search
Plug 'haya14busa/incsearch.vim'
Plug 'dyng/ctrlsf.vim'                 " search project

" syntax files
Plug 'plasticboy/vim-markdown'         " markdown syntax highlighting
Plug 'pangloss/vim-javascript'         " javascript utils
Plug 'vim-syntastic/syntastic'         " syntax highlighting
Plug 'joukevandermaas/vim-ember-hbs'   " Handlebars syntax highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'kylef/apiblueprint.vim'          " APIB syntax highlighting

" undo
Plug 'sjl/gundo.vim'                   " undo tree

" git
Plug 'jreybert/vimagit'
Plug 'mattn/webapi-vim'                " required for gist-vim
Plug 'mattn/gist-vim'                  " post gists to gist.github.com
Plug 'tpope/vim-fugitive'              " git utils
Plug 'airblade/vim-gitgutter'

" movement
Plug 'Lokaltog/vim-easymotion'         " much quicker movement
Plug 'vim-scripts/quit-another-window'

" colorschemes
Plug 'undertakingyou/jellybeans.vim'
Plug 'jnurmine/Zenburn'
Plug 'morhetz/gruvbox'
Plug 'synic/synic.vim'
Plug 'sickill/vim-monokai'

" interface
Plug 'bling/vim-airline'

" misc
Plug 'vim-scripts/openssl.vim'
Plug 'Valloric/ListToggle'

call plug#end()

" ### FOOTER/MODELINE {{{1
"----------------------------------------------------------------------------"
" auto-reload this file when saving
autocmd! bufwritepost plugins.vim source %

" vim:foldmethod=marker
