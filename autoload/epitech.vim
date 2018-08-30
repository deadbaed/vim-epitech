" autoload/epitech.vim
"
" made by x4m3
" source code: https://git.13370403.xyz/vim-epitech

" dictionary of the comments styles for supported languages
" 1: first line
" 2: middle lines
" 3: last line
let s:comStyles = {
			\'make': {1: '##', 2: '##', 3: '##'},
			\'c': {1: '/*', 2: '**', 3: '*/'},
			\'cpp': {1: '//', 2: '//', 3: '//'},
}

" check if current filetype is supported
function! s:checkFiletype()
	" check dictionary for current filetype
	return has_key(s:comStyles, &filetype)
endfunction

" function to prompt user for project name
function! s:inputProjectName()
	" call inputsave() to prompt user for input
	" call inputrestore() to finish user prompt

	call inputsave()
	let project_name = input('Enter project name: ')
	call inputrestore()
endfunction

" function to prompt user for file description
function! s:inputFileDescription()
	" call inputsave() to prompt user for input
	" call inputrestore() to finish user prompt

	call inputsave()
	let file_description = input('Enter file description: ')
	call inputrestore()
endfunction

" function to insert the epitech header
function epitech#addHeader()
	" if checkFiletype() fails, return error
	if !s:checkFiletype()
		echoerr "Failed to add Epitech header! Unsupported filetype: " . &filetype
		return
	endif

	let l:com1 = s:comStyles[&filetype][1]
	let l:com2 = s:comStyles[&filetype][2]
	let l:com3 = s:comStyles[&filetype][3]

	let l:let = append(0, l:com1)
	let l:let = append(1, l:com2 . " EPITECH PROJECT, " CURRENT_YEAR)
	let l:let = append(2, l:com2 . " " . project_name)
	let l:let = append(3, l:com2 . " File description:")
	let l:let = append(4, l:com2 . " " . file_description)
	let l:let = append(5, l:com3)
	let l:let = append(6, "")
	:8

	call s:inputProjectName()
	call s:inputFileDescription()
endfunction
