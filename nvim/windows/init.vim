set nocompatible
set encoding=utf-8

" some servers have issues with backup files (coc.nvim #649)
set nobackup
set nowritebackup

" shorter updatetime
set updatetime=300

" prevent text from shifting each time diagnostics appear
set signcolumn=yes

set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'

# code completion
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'pappasam/coc-jedi', { 'branch': 'main', 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'yaegassy/coc-laravel', { 'do': 'yarn install --frozen-lockfile' }

# syntax highlighting
" Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter'

" additional plugin for Vue syntax highlighting with vim-polyglot
" Plug 'posva/vim-vue'

" fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" linting / static analysis
" dense-analysis/ale does not work well with CoC, so I had to disable this for the time being
" Plug 'dense-analysis/ale'
Plug 'yaegassy/coc-phpstan', { 'do': 'yarn install --frozen-lockfile' }

" color themes
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/sonokai'

call plug#end()

filetype plugin indent on

syntax enable

set shiftwidth=4
set softtabstop=4
set tabstop=4
set showcmd
set number

" search
set ignorecase
set smartcase

" pair completion
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" status bar
let g:airline_powerline_fonts=1

" vim-vue
" let g:vue_pre_processors = ['scss']

" python provider (solves an issue of coc-jedi on Windows)
" adjust this depending on your setup
let g:python3_host_prog = 'C:/Python39/python.EXE'

" sonokai
if has('termguicolors')
    set termguicolors
endif

let g:sonokai_style = 'maia'
let g:sonokai_better_performance = 1
let g:airline_theme = 'sonokai'

" set color scheme
colorscheme sonokai

" retain Windows Terminal's configured opacity
hi Normal guibg=NONE ctermbg=NONE
