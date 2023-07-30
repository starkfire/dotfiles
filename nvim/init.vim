set nocompatible
set encoding=utf-8

set nobackup
set nowritebackup

set updatetime=300
set signcolumn=yes

set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'

# code completion
Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }

# syntax highlighting
" Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter'

" fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" linting
" does not work well with CoC, so I had to disable this for the time being
" Plug 'dense-analysis/ale'

" color themes
Plug 'folke/tokyonight.nvim'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'sickill/vim-monokai'

call plug#end()

filetype plugin on
filetype indent on

syntax enable

set shiftwidth=4
set tabstop=4
set showcmd
set number

set ignorecase
set smartcase

" pair completion
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" color scheme
colorscheme tokyonight-night

" vim-airline
let g:airline_powerline_fonts=1
