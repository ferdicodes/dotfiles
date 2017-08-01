" ==============================================================================
" ------------------ FERDINAND PRETORIUS' VIMRC --------------------------------
" ==============================================================================
" General VIM Sanity Settings
" ================================
" ===== {{{ Line Numbers
" This will show relative numbers mainly
" but it is also useful to know the current line
" that we are working on
set relativenumber number

" }}}
" ===== Turn Off Swap Files {{{
"
set noswapfile " turns off swap files
set nobackup   " turns off backups
set nowb       " turns off write backups

" }}}
" ===== Indentation {{{
au BufNewFile,BufRead *.py,*.c,*.cpp
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix |

au BufNewFile,BufRead *
  \ set tabstop=4 |
  \ set autoindent |
  \ set expandtab |

" Indentation for fullstack
au BufNewFile,BufRead *.js,*.html,*.css,*.scss
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |
  \ set expandtab " }}}
" ===== {{{ NeoComplete Settings
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3 " }}}
" ===== {{{ Fuzzy Finder Ignores
let g:ctrlp_custom_ignore = {
\   'dir': '\.git|node_modules|tmp',
\ } "}}}
" ===== {{{ Emmet abbreviates class to className in jsx & js files
let g:user_emmet_settings = {
\   'javascript.jsx': {
\     'extends': 'jsx'
\   },
\   'typescript': {
\     'extends': 'jsx'
\   }
\ } " }}}
" ===== {{{ Set ignored files when doing fuzzy find
set wildignore=*/tmp/*,*/node_modules/*,*.so,*.swp,*zip " }}}
" ===== Other General {{{
set nowrap
set wildmenu
set foldlevelstart=0
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:< "}}}

" ==============================================================================
source $HOME/.config/vim/keybinds.vim
source $HOME/.config/vim/autocmds.vim
source $HOME/.config/vim/abbreviations.vim
source $HOME/.config/vim/plugins.vim
source $HOME/.config/vim/colors.vim

