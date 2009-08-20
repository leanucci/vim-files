set nocompatible
set nobackup
set nowritebackup
set tags=~/.tags/

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

set number
set numberwidth=5
set cindent
set showmatch

set incsearch
set ignorecase
set hlsearch

set encoding=utf8
set tenc=utf8
set fileencoding=utf8

" Color scheme
colorscheme vibrantink
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0
set lines=40
set columns=140

syntax on

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

set wildmode=longest,full

" map <leader>t :FuzzyFinderTextMate<CR>
let g:fuzzy_ignore = "*.png;*.jpg;*.gif;vendor/**;coverage/**;tmp/**"
let g:fuzzy_matching_limit = 20

" nmap ,t :FuzzyFinderTextMate<CR>
" nmap ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
" Now mapping Command key for better usability
nmap  <D-r> :FuzzyFinderTextMate<CR>
nmap <D-d> :execute 'NERDTreeToggle ' . getcwd()<CR>
map <Leader>t :FuzzyFinderTextMate<cr>
map <Leader>b :FuzzyFinderBuffer<cr>
map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<cr>

filetype plugin indent on

" Use Ack instead of Grep when available
if executable("ack")
    set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
let mapleader = ","

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

map <C-a> viws
