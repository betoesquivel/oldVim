" FOrget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast saving and exiting
nmap <leader>q :wq!<cr>

" Fast escaping insert mode
inoremap <leader><leader> <Esc> 

" Fast Nerdtree
nmap <leader>e :NERDTree<cr>

" Turn on that syntax highlighting
syntax enable

" Installation of solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif

if has('gui_running')
	colorscheme solarized
else
	colorscheme twilight
endif

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>
