"" Leader Commands 
let mapleader = ","

" plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_powerline_fonts = 1
" Theme 
set background=dark
colorscheme flattened_dark

""movement
nnoremap j gj
nnoremap k gk
nnoremap Y y$

""life saver
vnoremap u <nop>
vnoremap U <nop>
vnoremap gu u
vnoremap gU U

" highlight last inserted text
nnoremap gV `[v`]

"inoremap jk <esc>
nnoremap <Leader>b ^
nnoremap <Leader>e g_
vnoremap <Leader>b ^
vnoremap <Leader>e g_

"" window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"" indenting and tab characters
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"" Basic usability
set cmdheight=2
set number
set cursorline
set showcmd
set wildmenu
set showmatch
set hidden
set confirm
set ignorecase
set smartcase
set nostartofline
set wildignore=*.o,*.obj,*.bak,*.exe
set laststatus=2
set showcmd


syntax enable
filetype plugin indent on
filetype plugin on

set omnifunc=syntaxcomplete#complete



"" nerd tree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"" ctrl-p
let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'

"" Pasting from outside Terminal

set pastetoggle=<F2>


"" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

nnoremap <Leader>P "+p
nnoremap <Leader>p "*p
nnoremap <Leader>y "*y
nnoremap <Leader><space> :nohl<CR>

"" Shortcuts to edit vimrc/zshrc and source vimrc
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>vrc :vsp $MYVIMRC<CR>
nnoremap <leader>zrc :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>

