set ruler
set backspace=indent,eol,start

" enable syntax highlighting
syntax enable

" show line numbers
set number
" show relative line numbers
set relativenumber

" indent when moving to the next line while writing code
set autoindent

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable easy file making and autowriting for python
set makeprg=python\ %
set autowrite

" let highlight be toggled with \h
map <leader>h :set hlsearch!<cr>

" disable tab expand for Makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
set noexpandtab
else
" otherwise, expand tab, tabstop = 4 spaces, shift = 4 spaces
set expandtab
set ts=4
set sw=4
endif

" enable pathogen for syntastic
execute pathogen#infect()

" Settings for Python for vim
let g:python_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/Users/invinst/anaconda3/bin/python3'

" Settings for YouCompleteMe
let g:ycm_server_python_interpreter = systemlist("which python3")[0]
let g:ycm_autoclose_preview_window_after_insertion = 1

" Settings for ale
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_save = 1

"" Settings for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
