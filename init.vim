" Map escape to jj
imap jj <Esc>

" Syntax highlighting
syntax on

:set nocompatible
:set redrawtime=10000
:set background=dark
:set laststatus=2
:set noerrorbells
:set tabstop=2 softtabstop=2
:set shiftwidth=2
:set expandtab
:set nu
:set nowrap
:set nobackup
:set undodir=~/.vim/undordir
:set undofile 
:set incsearch
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set smartindent
:set cursorline

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/prettier/vim-prettier' " Formatter
Plug 'https://github.com/sheerun/vim-polyglot' " Code highlighter
Plug 'https://github.com/junegunn/fzf' " finder
Plug 'https://github.com/fatih/vim-go' " go lang support for vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" This plugin adds Go language support for Vim, with many features
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

set encoding=UTF-8

call plug#end()

" Set mapleader to space
let mapleader = " "
" Maps
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <leader><leader>f :Files<CR>
nnoremap <leader><leader>g :GoFmt<CR>
nnoremap <leader><leader>p :Prettier<CR>
nnoremap <leader><leader>c :call NERDComment(0,"toggle")<CR>
vnoremap <leader><leader>c :call NERDComment(0,"toggle")<CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><Tab><Tab> :bprevious<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"<CR>

:set completeopt-=preview " For No Previews

" TextEdit might fail if hidden is not set.
:set hidden

" Some servers have issues with backup files, see #649.
:set nobackup
:set nowritebackup

" Give more space for displaying messages.
:set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
:set updatetime=300

" Don't pass messages to |ins-completion-menu|.
:set shortmess+=c

:colorscheme darcula

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" Set the prettier CLI executable path
let g:prettier#exec_cmd_path = "~/.vim/plugged/vim-prettier/node_modules/prettier"
" Max line length that prettier will wrap on: a number or 'auto'
let g:prettier#config#print_width = 100 " default is 'auto'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
