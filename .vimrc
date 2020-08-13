syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
set noshowmode  
set laststatus=2

" More
set nobackup                    " Do not keep backup files, it's 70's style cluttering
set clipboard=unnamedplus
set noswapfile                  " Do not write annoying intermediate swap files
" set title
" set visualbell                " I will go blind
set noerrorbells                " No beep beep

" set foldcolumn=0
set signcolumn=yes
set updatetime=200                      " Faster completion
" set termguicolors
" highlight Comment ctermfg=darkgrey
" au BufEnter,BufRead *.py setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

so $HOME/.vim/coc-vim.vim
" ********************************************************************************
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dracula/vim', { 'name': 'dracula'  }
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax' 
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
call plug#end()
" ********************************************************************************

" THEME SETUP
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \}

" SYNTAX SETUP
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
