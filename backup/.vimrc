filetype off

colo desert
set guifont=Menlo\ Regular\ for\ Powerline:h14

set nobackup
set guitablabel=%t

set smartindent
set smarttab
set expandtab
set softtabstop=0
set listchars=tab:>-,trail:-

set history=50
set ruler
set showcmd
set incsearch
set tabstop=4

set number
set autoindent
set mouse=a
set scrolloff=5
set ignorecase
set smartcase
set hid
set shiftwidth=4

set nowrap
syn on
set confirm

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set fileencoding=utf-8
set fileformat=dos
set fileformats=dos,unix

language messages zh_CN.utf-8

filetype on
filetype plugin on
filetype plugin indent on

command W w
command Q q
nmap <F2> :tabprevious<CR>
nmap <F3> :tabnext<CR>
nmap <F5> :e<CR>

au BufRead,BufNewFile *.lh set filetype=lua
au BufRead,BufNewFIle *.{md,mkd,mkdn,mark*} set filetype=markdown

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let mapleader=","

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
