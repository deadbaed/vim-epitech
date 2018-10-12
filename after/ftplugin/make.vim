" after/ftplugin/make.vim
"
" made by x4m3

filetype plugin indent on

" turn on syntax highlighting
syntax on

" define indentation
setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=0

" show colorbar at column 80
setlocal colorcolumn=80

" show extra characters
setlocal list
setlocal listchars=eol:¬,tab:>-

" insert real tabs, no spaces
setlocal noexpandtab

" highlight leading and trailing spaces
syn match ErrorLeadSpace /^ \+/
syn match ErrorTailSpace / \+$/
