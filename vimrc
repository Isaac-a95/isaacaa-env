" This is my personal vimrc file
"
" I use vim for C,CPP,python programming + TeX editing
" so options usually aimed to improve the experience in those cases
"
" I use vundle for plugin management.
" When running vim for the first time in a system:
" :PluginInstall
" see: https://github.com/VundleVim/Vundle.vim#quick-start
"
" Some of the solutions and options in this file are 'stolen' from the
" Internet, mainly from StackOverflow


syntax on
set number
set numberwidth=5
set hlsearch

set nocompatible              " be iMproved, required
filetype off                  " required

set number relativenumber

" Latex-vim setup
filetype plugin on
let g:tex_flavor='latex'
set runtimepath^=~/.vim/bundle/vim-latex-1.10.0
" If we are editing tex files, we set spell check
autocmd FileType tex setlocal spell
autocmd FileType markdown setlocal spell

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" gc for commenting stuff
Plugin 'tpope/vim-commentary'
" For using // instead of /* */ in c, cpp files
autocmd FileType c,cpp,java setlocal commentstring=//\ %s

" Git commands within vim
Plugin 'tpope/vim-fugitive'

" Show which lines are changed from last commit
" \[c and \]c for navigate aroung patched
" \hp to preview changes
" \hu to undo
" \hs to add that patch
Plugin 'airblade/vim-gitgutter'


Plugin 'scrooloose/nerdtree'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" Show repo information in the lower bar
Plugin 'vim-airline/vim-airline'
Plugin 'rhysd/vim-grammarous'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'zeekay/vim-beautify'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" show existing tab with 3 spaces width
set tabstop=6
" when indenting with '>', use 3 spaces width
set shiftwidth=3
" On pressing tab, insert 3 spaces
set expandtab
colorscheme zenburn
"set background=dark
"colorscheme solarized

" Highlight from column 80 to keep things short
autocmd FileType cpp,c,python,java,markdown let &colorcolumn="80,".join(range(120,999),",")

" Add extra highligth to parenthesis matching, with zenburn is quite
" painful sometimes...
hi MatchParen cterm=none ctermbg=blue ctermfg=red

" Avoid the use of ESC, double-tap hh for exiting insert mode
imap hh <Esc>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Function to remove trailing whitespaces
function! RmTrail()
     execute ':%s/\s\+$//e'
endfunction

" Time for hardcore mode! Disable arrow keys, hjkl time :-)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
