" Auto Commands 
" =================
" ===== Set a command for code folding in vim {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END " }}}
" ===== Prettier Auto Formatting {{{
autocmd BufWritePre *.js,*.jsx,*.css,*.scss Prettier
" }}}
