" Hybrid line nuymbers
set number relativenumber

" Tab stuff
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" Inclusive search
set incsearch

" No swap files
set noswapfile

" No wrap
set nowrap

" Column line
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Reload init.vim after change
autocmd! BufWritePost init.vim source %

call plug#begin(stdpath('data') . '/plugged')
" Vim Wiki
Plug 'vimwiki/vimwiki'
" Autocomplete
Plug 'Valloric/YouCompleteMe'
" Themez
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/dracula-theme'
Plug 'sainnhe/edge'
" Git
Plug 'tpope/vim-fugitive'
" Indent line
Plug 'yggdroot/indentline'
" Python tools
Plug 'psf/black'
Plug 'nvie/vim-flake8'
" To do 
Plug 'aserebryakov/vim-todo-lists'
call plug#end()

" Theme
set termguicolors
set background=dark
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
colorscheme edge

" Indent line character
let g:indentLine_char = '┊'

" Run Black on Python files when saving
autocmd BufWritePre *.py execute ':Black'