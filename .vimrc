syntax on
set shell=/bin/bash
set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab
set number
set hlsearch
set encoding=utf-8
set completeopt-=preview
" set paste
if has("autocmd")
      filetype plugin indent on
      endif

set noshowmatch
let g:loaded_matchparen=1

" vundle setup ********************
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" general use
Plugin 'tpope/vim-commentary'
Plugin 'machakann/vim-highlightedyank'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'mhinz/vim-startify'
Plugin 'ervandew/supertab'
    
" cpp 
Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'frazrepo/vim-rainbow'
Plugin 'jiangmiao/auto-pairs'

" python
Plugin 'vim-python/python-syntax'
" Plugin 'davidhalter/jedi-vim'

" vala
Plugin 'arrufat/vala.vim'

" javascript 
" Plugin 'mattn/emmet-vim'
" Plugin 'pangloss/vim-javascript'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'turbio/bracey.vim'
" Plugin 'othree/yajs'

set laststatus=2

call vundle#end()            
filetype plugin indent on   
let g:highlightedyank_highlight_duration = 300


" colored brackets  
" au FileType c,cpp,objc,objcpp,java call rainbow#load()
" highlight self

let g:lightline = {
            \ 'colorscheme': 'seoul256',
            \}

" sysout snipped for java
au FileType java iabbr sysout System.out.println("");<Left><Left><Left>

" python syntax highlighting
let g:python_highlight_class_vars = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_builtins = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_operators = 1
let g:python_highlight_builtin_funcs_kwarg = 1
let g:python_highlight_file_headers_as_comments = 1
let g:python_highlight_indent_errors = 1
" let g:python_highlight_all = 1

"**********   html  *************************** 
" let g:user_emmet_leader_key=','

" change color of line numbers
highlight LineNr ctermfg=DarkGray

" vala setup
let vala_comment_strings = 1
let vala_no_trail_space_error = 1
let vala_no_tab_space_error = 1
let vala_minlines = 120

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
" set completeopt=menu,menuone

" Limit popup menu height
set pumheight=20

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'"
" ycm c family 
let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib/llvm-6.0/lib'
let g:ycm_global_ycm_extra_conf = 1
