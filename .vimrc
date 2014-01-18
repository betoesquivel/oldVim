" Forget being compatible with good ol' vi
set nocompatible


" Pathogen installation
execute pathogen#infect()

" Get that filetype stuff happening, this is a bad comment
filetype on
filetype plugin on
filetype indent on
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>. :w!<cr>

" Fast saving and exiting
nmap <leader>q :wq!<cr>

" Fast escaping insert mode
imap <leader>. <Esc> 

" Fast escaping visual and select mode
vmap <leader>. <Esc> 

" Fast pasting from system clipboard
nmap <C-S-p> "+p<CR>

" Fast pasting from system clipboard
vmap <C-S-p> "+p<CR>

" Fast copying to system clipboard
vmap <C-c> "+y<CR>

" Fast Nerdtree
nmap <leader>e :NERDTree<cr>

" Fast move next tab
nmap <leader>t <C-w><C-w>

" Fast comment
map <leader>c <C-_><C-_>

" Make sure I can see the when I entered a leader
set showcmd

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
nmap <silent> ,ev :e ~/.vim/.vimrc<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so ~/.vim/.vimrc<cr>
