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
setlocal shiftwidth=8
setlocal softtabstop=8

" show colorbar at column 80
setlocal colorcolumn=80

" show tab characters as '>-'
setlocal list
setlocal listchars=tab:>-

" insert real tabs, no spaces
setlocal noexpandtab

" comments
"
" /* first line
" ** lines in middle
" */ last line
setlocal comments=s:/*,m:**,ex:*/
