set nocompatible
set nobackup
set nowritebackup

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol

set number
set numberwidth=5
set cindent
set showmatch

set encoding=utf8
set tenc=utf8
set fileencoding=utf8

" Color scheme
colorscheme vividchalk
set lines=50
set columns=150

let g:fuzzy_ignore = "*.png;*.jpg;*.gif;vendor/**;coverage/**;tmp/**"
let g:fuzzy_matching_limit = 20

nmap  <D-r> :FuzzyFinderTextMate<CR>
nmap <D-d> :execute 'NERDTreeToggle ' . getcwd()<CR>
map <Leader>t :FuzzyFinderTextMate<cr>
map <Leader>b :FuzzyFinderBuffer<cr>
map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<cr>

filetype plugin indent on

