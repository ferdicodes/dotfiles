" ===== Call Plugin Begin {{{
call plug#begin('~/.vim/plugged')

" }}}
" ==============================================================================
" {{{ VIM Improvements
" =====================
Plug 'Raimondi/delimitMate'       " Auto Closing Tags
Plug 'scrooloose/nerdtree'        " It's nerdtree
Plug 'kien/ctrlp.vim'             " Fuzzy file finder
Plug 'tpope/vim-fugitive'         " VIM git integration
Plug 'easymotion/vim-easymotion'  " Movement shortcuts
Plug 'mattn/emmet-vim'            " It's Emmet
Plug 'shougo/neocomplete.vim'     " Auto completion
Plug 'tomtom/tcomment_vim'        " Easy Comments

" }}}
" ==============================================================================
" {{{ Language Plugins
" =====================
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'

" }}}
" ==============================================================================
" {{{ Appearance
" ===============
Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'

" }}}
" ==============================================================================
" ===== Call Plugin End {{{
call plug#end()

" }}}
" ==============================================================================

