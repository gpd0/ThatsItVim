" Vim RC Config

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" LOAD PLUGINS ---
source ~/.vim/plugins.vim
if exists('$KITTY_WINDOW_ID') || exists('$ALACRITTY_SOCKET')
  source ~/.vim/patch.vim
endif
source ~/.vim/nerdtree.vim
source ~/.vim/fzf.vim
source ~/.vim/coc.vim
if filereadable(expand("~/.vim/plugged/vim-startify/plugin/startify.vim"))
  source ~/.vim/startify.vim
endif
" ---

set number
set mouse=a
set clipboard=unnamed
set path+=**
set autoread
au FocusGained,BufEnter * :silent! !
au FocusGained,BufEnter * :checktime
set encoding=UTF-8

set nobackup
set noswapfile
set expandtab tabstop=4 shiftwidth=4 softtabstop=4

set autoindent
set showmode showcmd
set showmatch

set ignorecase
set smartcase

set hlsearch
set incsearch

set scrolloff=8
set updatetime=300

filetype plugin indent on

if has("termguicolors")
  set termguicolors
endif

syntax enable
set background=dark

if filereadable(expand("~/.vim/plugged/everforest/colors/everforest.vim"))
  colorscheme everforest
endif

let g:airline_powerline_fonts = 1
let g:webdevicons_enable_airline = 0

set t_RV=
