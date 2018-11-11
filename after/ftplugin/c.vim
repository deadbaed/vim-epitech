" after/ftplugin/c.vim
"
" made by x4m3

filetype plugin indent on

" turn on syntax highlighting
syntax on

" force c indentation
setlocal cindent

" define indentation
setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=0

" show colorbar at column 80
setlocal colorcolumn=80

" show extra characters
setlocal list
setlocal listchars=eol:¬,tab:>-,trail:!

" insert spaces, not tabs
setlocal expandtab
setlocal smarttab
