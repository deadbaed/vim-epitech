" autoload/epitech.vim
"
" made by x4m3

" dictionary of the comments styles for supported languages
" 1: first line
" 2: middle lines
" 3: last line
let s:comStyles = {
			\'make': {'1': '##', '2': '##', '3': '##'},
			\'c': {'1': '/*', '2': '**', '3': '*/'},
			\'cpp': {'1': '//', '2': '//', '3': '//'},
			\}

" quotes to insert in file_description
let s:quotes = [
			\"try not to segfault, good luck :)",
			\"hello world?",
			\"programmers start to count from 0",
			\"man man",
			\"vim-epitech made by x4m3",
			\"https://github.com/x4m3/vim-epitech",
			\"echo $?",
			\"don't forget to free at the end",
			\"check your malloc!",
			\"segmentation fault (core dumped)",
			\"you're a bad developer",
			\"csfml is the best thing ever",
			\"vim > emacs",
			\"xkcd.com/378",
			\"hey. real programmers use vim",
			\"well, real programmers use ed",
			\"no, real programmers use cat",
			\"r/ProgrammerHumor",
			\"rm -rf --no-preserve-root /",
			\"example of bad code:",
			\"01100010 01101001 01101110 01100001 01110010 01111001",
			\"fireplace 4k",
			\"epitech > 42",
			\"epitech > epita",
			\"code on paper!",
			\"if you code on paper, you're not a real programmer",
			\"C-x C-c",
			\":wq",
			\"M-x doctor",
			\"there's a problem: the intra is not down",
			\]

" check if current filetype is supported
function! s:CheckFiletype()
	" check dictionary for current filetype
	return has_key(s:comStyles, &filetype)
endfunction

" function to prompt user for file description
function! s:InputFileDescription()
	" call inputsave() to prompt user for input
	" call inputrestore() to finish user prompt

	call inputsave()
	let file_description = input('Enter file description (or press ENTER to put a random text): ')
	call inputrestore()
	" if the length of the input is null
	if strlen(file_description) == 0
		let currentSecond = strftime('%S') / 2
		let file_description = s:quotes[currentSecond]
	endif
	return file_description
endfunction

" function to get current year
function! s:GetCurrentYear()
	let currentYear = 2018
	"let currentYear = strftime("%Y")
	return currentYear
endfunction

" function to insert the epitech header
function epitech#addHeader()
	" if checkFiletype() fails, return error
	if !s:CheckFiletype()
		echoerr "Unsupported filetype for Epitech header: " . &filetype
		return
	endif

	let l:com1 = s:comStyles[&filetype]['1']
	let l:com2 = s:comStyles[&filetype]['2']
	let l:com3 = s:comStyles[&filetype]['3']

	let l:let = append(0, l:com1)
	let l:let = append(1, l:com2 . " EPITECH PROJECT, " . s:GetCurrentYear())
	let l:let = append(2, l:com2 . " " . expand('%:r'))
	let l:let = append(3, l:com2 . " File description:")
	let l:let = append(4, l:com2 . " " . s:InputFileDescription())
	let l:let = append(5, l:com3)
	let l:let = append(6, "")
	:8
endfunction
