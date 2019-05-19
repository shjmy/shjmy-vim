"shjmy vimrc

" enable syntax
syntax enable

" tabs are shown as number of spaces
set tabstop=2

" number os spaces in a tab
set softtabstop=2

" tabs are spaces
set expandtab

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" allow for traditional backspace usage in insert mode
set backspace=indent,eol,start

" package manager installation
" vimplug check and installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug packages
call plug#begin()
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'aonemd/kuroi.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ajh17/vimcompletesme'
Plug 'mattn/emmet-vim'
call plug#end()

" theme
set background=dark
set t_Co=256
colorscheme kuroi

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>
