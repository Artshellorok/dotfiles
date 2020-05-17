set termguicolors                "1-3 lines truecolor 
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set nocompatible                 "Disable vi compatibility
set clipboard=unnamed
so ~/.vim/plugins.vim

syntax enable				"Enable syntax highlighting

let g:material_theme_style = 'darker'
colorscheme material

set guioptions=				"Disable gui for gVim
set guifont=Hack\ 11           "Set font
set backspace=indent,eol,start		"Make backspace behave like in any other editor
set linespace=12 
set number				"Line numbers

let mapleader = ','			"The default leader is \, but , is much better.
"--------Tab to 4 spaces--------" 
filetype plugin indent on 

set tabstop=4               " when indenting with '>', use 4 spaces width 
set shiftwidth=4            " On pressing tab, insert 4 spaces
set expandtab

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

"Mappings to edit (g)vimrc and plugins.vim
nmap <Leader>ev :e ~/.vimrc<cr>
nmap <Leader>eg :e ~/.gvimrc<cr>
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>
nmap <Leader>pr :e ~/projects/<cr>
nmap <Leader>do :e ~/projects/yeducationback<cr>

"Mapping to execute current python file
nmap <Leader>py :!python %<cr>
nmap <Leader>c :!gcc % && ./a.out<cr>

"Mapping to execute current php file
nmap <Leader>ph :!php %<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

inoremap <silent> <C-S>         <C-O>:update<CR>

"---------Auto-Commands---------"

"Automatically source the .vimrc file on save

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
autocmd! bufwritepost ~/.vim/plugins.vim source $MYVIMRC


"---------True-colors---------"

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

