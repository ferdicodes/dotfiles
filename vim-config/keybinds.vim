" Custom Keybindings
" =======================
" ===== {{{ Leader Key
let mapleader=","
" }}}
" ===== {{{ Quick Open & Source VIM Config Files
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ep :vsplit $HOME/.config/vim/plugins.vim<cr>
nnoremap <leader>ek :vsplit $HOME/.config/vim/keybinds.vim<cr>
nnoremap <leader>eau :vsplit $HOME/.config/vim/autocmds.vim<cr>
nnoremap <leader>eab:vsplit $HOME/.config/vim/abbreviations.vim<cr>
nnoremap <leader>ec :vsplit $HOME/.config/vim/colors.vim<cr>
" Source $MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}
" ===== {{{ Easy Window Movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}
" ===== {{{ NERDTreeToggle
nnoremap <C-n> :NERDTreeToggle<cr>
" }}}
" ===== {{{ Utilities

" Move lines up or down
nnoremap - ddp
nnoremap _ ddkP

" Delete a line while in insert mode
inoremap <c-d> <esc>ddi

" Easier code folding
nnoremap <Space> za

" Uppercase current word in insert and normal modes
inoremap <c-u> <esc>b<esc>vEU<esc>Ea
nnoremap <c-u> bvEU<esc>E

" Surround word under cursor in quotes
nnoremap <leader>" ea"<esc>bi"<esc>el
nnoremap <leader>' ea'<esc>bi'<esc>el

" Visual select to surround with qoutes
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

" @EDIT in side of
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in" :<c-u>normal! f"vi"<cr>
onoremap il" :<c-u>normal! F"vi"<cr>
onoremap in' :<c-u>normal! f'vi'<cr>
onoremap il' :<c-u>normal! F'vi'<cr>

nnoremap <leader>[ :execute "leftabove vsplit " . bufname("#")<cr>
nnoremap <leader>] :execute "rightbelow vsplit " . bufname("#")<cr>

nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprevious<cr>

nnoremap ]q :execute "cnext"<cr>
nnoremap [q :execute "cprevious"<cr>
" }}}
" ===== {{{ NeoComplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
" }}}

