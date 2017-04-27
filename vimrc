set nocompatible
set clipboard=unnamed
set esckeys

" use a mouse
set mouse=a
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end

set backspace=indent,eol,start
set number
syntax on
set cursorline
set encoding=utf8

" new leader
let mapleader = ','
let maplocalleader = ',,'

" smarter tabs
set smarttab

" tab
set shiftwidth=4
set tabstop=4

" no sound
set noerrorbells
set novisualbell

" show commands
set showcmd

" no arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-surround'	
Plugin 'sheerun/vim-polyglot'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'ryanoasis/vim-devicons'
Plugin 'freitass/todo.txt-vim'

" All Plugins before this line
call vundle#end()
filetype plugin indent on

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" vim-nerdtree
" show hidden files
let NERDTreeShowHidden=1
" open by default when starting with no command line arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if the only left window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-airline
set laststatus=2

" fonts for devicons
let g:airline_powerline_fonts=1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline:h11
