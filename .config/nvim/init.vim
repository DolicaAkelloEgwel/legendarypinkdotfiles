" Hybrid line numbers
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
" VSCode like thing
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Themez
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/dracula-theme'
Plug 'sainnhe/edge'
Plug 'dguo/blood-moon', {'rtp': 'applications/vim'}
" Git
Plug 'tpope/vim-fugitive'
" Indent line
Plug 'yggdroot/indentline'
" Python tools
Plug 'psf/black'
Plug 'nvie/vim-flake8'
" To do 
Plug 'aserebryakov/vim-todo-lists'
" Supercollider?
Plug 'davidgranstrom/scnvim'
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" Theme
set termguicolors
" set background=dark
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
colorscheme blood-moon

" Indent line character
let g:indentLine_char = '┊'

" Run Black on Python files when saving
autocmd BufWritePre *.py execute ':Black'

:hi Normal guibg=NONE ctermbg=NONE


autocmd FileType markdown let g:indentLine_enabled=0
let g:vimwiki_conceallevel=0

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
