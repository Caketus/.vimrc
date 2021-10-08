"enable syntax processing
:syntax on

" sets the syntax color to the 'desert' colorscheme
:colorscheme desert

" turns mouse cursor navigation on
:set mouse=a

" highlight searchs when pressing '*' in command mode
:set hlsearch

" show line numbers
:set nu

" visual autocomplete for command lines
:set wildmenu

" highlight current line
:set cursorline

" enable smart indentation
:set smartindent

" displays the line number, the column number, the virtual column number,
" and the relative position of the cursos on the bottom-right
:set ruler

" in command mode, puts '//' in front of said lines and removes the shitty
" highlights vim puts automatically. Say you want to comment line 10 to 20:
" :10,20 Cm     (Uc to uncomment)
command -range Cm <line1>,<line2>s/^/\/\//g | nohlsearch
command -range Uc <line1>,<line2>s/^\/\/

" in insert mode, press F2 to put a printf that displays 'Hello everyone' in
" cyan, then resets the color code
:nmap <F2> o<Bar>printf("\x1b[35m""Hello everyone\n""\x1b[0m");<Esc>:%s/\|/<Cr>

" enables function folding via command line
" 'za' toggles it on and off
" 'zo' opens it
" 'zc' closes it
:set foldmethod=indent
:set foldnestmax=10
:set nofoldenable
:set foldlevel=2

" move lines up and down
noremap - ddkkp
noremap + ddp
"
"
"The following are commands that help with the norm
"
"
"
"
"
" highlights double-spaces in red
highlight DoubleWhiteSpace ctermbg=red guibg=red
match DoubleWhiteSpace /  /

" highlights spaces at the end of lines in yellow
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=yellow guibg=yellow
