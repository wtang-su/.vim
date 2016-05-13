set nocompatible
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set number
set showmatch
set nohlsearch
set incsearch
set smartcase
set autoindent
set background=light
set t_Co=256
set mouse=a
set backspace=indent,eol,start
filetype plugin indent on
syntax on
set cursorline
autocmd FileType python match Underlined /\%>79v.*/
autocmd FileType python,go,javascript,c,sh,html,css setlocal completeopt-=preview

let mapleader = ";"
" key maps
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>x :x<cr>
nmap <leader>l :nohl<cr>

" Pathogen
execute pathogen#infect() 

" Supertab
let b:SuperTabDisabled = 1
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType go,javascript,c,sh,html,css let b:SuperTabDisabled = 0

" Nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
nnoremap <C-h> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" molokai
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
hi Normal ctermfg=252 ctermbg=none

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1

" vim-go
au FileType go silent exec "!gocode set autobuild true > /dev/null"
let g:go_gorename_prefill = 0
au FileType go nnoremap <C-i> :GoImports <cr>
au FileType go nnoremap <F9> :w <cr> :exec("!go run ". shellescape(expand('%:p')))<cr>
au FileType go nnoremap <F7> :w <cr> :GoTest <cr>
au FileType go nnoremap <F6> :w <cr> :GoErrCheck <cr>
au FileType go nnoremap <F2> :w <cr> :GoRename <cr>
au FileType go nnoremap <C-k> :GoDoc <cr>

" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Tagbar
nmap <C-l> :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
