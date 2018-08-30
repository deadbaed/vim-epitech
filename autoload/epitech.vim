" autoload/epitech.vim
"
" made by x4m3
" source code: https://git.13370403.xyz/vim-epitech

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
	call s:inputProjectName()
	call s:inputFileDescription()
endfunction
