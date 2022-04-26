call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Tervicke/lipsum-vim'
Plug 'jiangmiao/auto-pairs' 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree'
Plug 'cocopon/iceberg.vim'
Plug 'tomasr/molokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'sukima/xmledit'
Plug 'tpope/vim-ragtag'
Plug 'jceb/vim-orgmode'
call plug#end()

set encoding=utf-8
set cursorline 
set expandtab
syntax enable
filetype indent on
set background=dark
colorscheme gruvbox 
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noswapfile 
set nohlsearch 
set incsearch 
set nu
set wildmenu
set scrolloff=10
syntax enable
set termguicolors
let g:airline_symbols_ascii = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled= 1
let g:airline_powerline_fonts = 1 
let g:airline#extensions#whitespace#enabled = 0
let g:airline_right_sep = ''
let g:airline_section_z = ''
let g:airline_section_y = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_count = 0

let mapleader = " "

nnoremap <leader>t  :below terminal ++rows=10 <Cr>
nnoremap <leader>n  :NERDTreeToggle<Cr>
nnoremap <leader>p  "+p<Cr>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "this closes the nerdtree when its the only thing running in background"
"source ~/.vim/COC_config.vim
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd VimEnter * hi NonText guifg=bg
