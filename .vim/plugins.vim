filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'kaicataldo/material.vim'
Plugin 'tomasr/molokai'
let NERDTreeHijackNetrw = 0


call vundle#end()            " required
filetype plugin indent on    " required
