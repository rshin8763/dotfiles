"" Leader Commands
let mapleader = ","

syntax enable
filetype plugin indent on

set omnifunc=syntaxcomplete#complete

" plugins

call plug#begin('~/.vim/plugged')
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mhartington/nvim-typescript'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-clang'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
" Plug 'Valloric/YouCompleteMe'
" Plug 'ajh17/VimCompletesMe'
call plug#end()

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#clang#libclang_path='/usr/local/Cellar/llvm/6.0.0/lib/libclang.dylib'
" let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/6.0.0/lib/clang'
" let g:deoplete#enable_smart_case = 1

" Theme
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:airline_powerline_fonts = 1
colorscheme solarized

nnoremap Y y$

"" Movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Logical big movements
nnoremap K H
nnoremap J L
nnoremap H ^
nnoremap L g_
vnoremap K H
vnoremap J L
vnoremap H ^
vnoremap L g_

"new hotkey for joinLine
noremap <leader>j J
nnoremap <leader>gj gJ
vnoremap <leader>j J
vnoremap <leader>gj gJ

""life saver
vnoremap u <nop>
vnoremap U <nop>
vnoremap gu u
vnoremap gU U

" highlight last inserted text
nnoremap gV `[v`]

nnoremap <Silent><Leader>\ :vsplit<CR>
nnoremap <Silent><Leader>\| :vsplit<CR>
vnoremap <Silent><Leader>\ <Esc>:vsplit<CR>
vnoremap <Silent><Leader>\| <Esc>:vsplit<CR>
nnoremap <Silent><Leader>- :split<CR>
vnoremap <Silent><Leader>- <Esc>:split<CR>

"" tmux + window movement
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
set timeoutlen=1000
set ttimeoutlen=0 "snappy esc
set lazyredraw
""set cmdheight=2
set number
set relativenumber
set cursorline
set showcmd
set wildmenu
set showmatch
set hidden
set confirm
set nostartofline
set wildignore=*.o,*.obj,*.bak,*.exe
set laststatus=2
set showcmd
nnoremap <CR> o<Esc>

"Mouse
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Search
set hlsearch
set ignorecase
set smartcase
set gdefault

" some shortcuts
nnoremap <leader>q @q
nnoremap <Silent><Leader>n :set relativenumber!<cr>"
nnoremap <leader>x :x<cr>

" Maintain selection for indents
vnoremap > >gv
vnoremap < <gv

"" proper copy and paste from clipboard
vnoremap <leader>y :w !pbcopy<CR><CR> 
vnoremap <leader>y :w !pbcopy<CR><CR> 
nnoremap <leader>v :r !pbpaste<CR><CR>
vnoremap <leader>v :r !pbpaste<CR><CR>

" paste last yanked line
nnoremap <leader>p "0p
nnoremap <leader>P "0P

"" nerd tree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeHijackNetrw=1

"" ctrl-p
let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>f :CtrlP<CR>

"" Pasting from outside Terminal
set pastetoggle=<F2>

"" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

"nnoremap <Leader>P "+p
"nnoremap <Leader>p "*p
"nnoremap <Leader>y "*y
nnoremap <Leader><space> :nohl<CR>

"" Shortcuts to edit vimrc/zshrc and source vimrc
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
"nnoremap <leader>s :mksession<CR>

