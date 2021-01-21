" Colors
syntax enable    "enable syntax processing

"UI
set number              " show line numbers
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]

" Map keys
" set leader: https://medium.com/usevim/vim-101-what-is-the-leader-key-f2f5c1fa610f
let mapleader=","

" Easily edit vimrc and source it to effect changes
" https://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap <leader>ev :split $MYVIMRC<cr>
" Sets source to vim, installs any new plugins, and quits the status bar
nnoremap <leader>sv :source $MYVIMRC<cr> <bar> :PluginInstall<cr>

" Plugins
" Opens nerdtree
map <C-n> :NERDTreeToggle<CR>
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vundle Help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
