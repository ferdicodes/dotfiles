" ==============================
" General VIM Sanity Settings
" ==============================
" Line Numbers
set relativenumber number

" Indenting and <tab> behaviour
set tabstop=2 shiftwidth=2 expandtab

" ==================
" Custom Keybindings
" ==================

" ===== Remap Leader key
let mapleader=","

" ===== Open up VIMRC in a vsplit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source $MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>

" Move lines up or down
nnoremap - ddp
nnoremap _ ddkP

" Delete a line while in insert mode
inoremap <c-d> <esc>ddi

" Uppercase current word in insert and normal modes
inoremap <c-u> <esc>b<esc>vEU<esc>Ea
nnoremap <c-u> bvEU<esc>E

" Surround word under cursor in quotes
nnoremap <leader>" ea"<esc>bi"<esc>el
nnoremap <leader>' ea'<esc>bi'<esc>el

" Visual select to surround with qoutes
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

" ==========================================
" Abbreviations for some common typos I make
" ==========================================
iabbrev incldue include

