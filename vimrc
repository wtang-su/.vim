set nocompatible
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set number
set showmatch
set hlsearch
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

" Taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1
nnoremap <C-l> :TlistToggle<cr>

" molokai
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
hi Normal ctermfg=252 ctermbg=none

" vim-go
au FileType go nnoremap <Leader>o :GoImports <cr>
au FileType go nnoremap <Leader>r :w <cr> :GoRun <cr>
au FileType go nnoremap <C-k> :GoDoc <cr>

" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
