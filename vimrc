set nocompatible            " Use vim settings
set nobackup                " Make a backup before overwriting a file.

set tabstop=2               " Two spaces wide tabs
set smarttab                
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol

set guifont=Monaco:h14
set number
set numberwidth=5
set cindent
set showmatch
set ruler
set hidden
set history=1000
set title
set scrolloff=3

set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2
"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set encoding=utf8
set tenc=utf8
set fileencoding=utf8

" Color scheme
colorscheme vibrantink

let g:fuzzy_ignore = "*.png;*.jpg;*.gif;vendor/**;coverage/**;tmp/**"
let g:fuzzy_matching_limit = 20

" nmap <D-r> :FuzzyFinderTextMate<CR>
nmap <D-d> :execute 'NERDTreeToggle ' . getcwd()<CR>
" map <Leader>t :FuzzyFinderTextMate<cr>
" map <Leader>b :FuzzyFinderBuffer<cr>
map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<cr>
nmap <silent> <D-r> :CommandT<CR>
let g:CommandTMatchWindowAtTop = 1
let g:CommandTNeverShowDotFiles = 0
let g:CommandTMaxFiles = 300


filetype plugin indent on

" NERDTree config
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeChristmasTree = 0

" Markdown stuff from http://plasticboy.com/markdown-vim-mode/
augroup mkd
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

