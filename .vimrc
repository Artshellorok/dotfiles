set nocompatible
set clipboard=unnamed
so ~/.vim/plugins.vim

syntax enable				"Enable syntax highlighting

colorscheme desert

set guioptions=				"Disable gui for gVim
set backspace=indent,eol,start		"Make backspace behave like in any other editor
set linespace=12
set number				"Line numbers

let mapleader = ','			"The default leader is \, but , is much better.



"--------Search--------"
set hlsearch
set incsearch


"--------Mappings--------"

"Save file in normal mode on Ctrl+S
nmap  :w<cr>

"Copy, cut and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"Undo
nmap <C-z> "+u
vmap <C-z> "+u

"Mappings to edit vimrc and plugins.vim
nmap <Leader>ev :e ~/.vimrc<cr>
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>

"Mapping to execute current python file
nmap <Leader>py :!python %<cr>

"Add simple ighlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Fix ctrl+s in insert mode
imap  


"---------Auto-Commands---------"

"Automatically source the .vimrc file on save

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
autocmd! bufwritepost ~/.vim/plugins.vim source $MYVIMRC
