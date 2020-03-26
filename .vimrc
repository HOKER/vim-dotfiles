"=> Basic Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on "Setting syntax highlight
set autoread "Set to auto read when a file is changed from outside
set encoding=utf8 "Set utf8 as standard encoding
set ffs=unix,dos,mac "Use Unix as standard file type
set nocompatible "Set no compatible between vi and vim
set backspace=indent,eol,start "Alow backspacing over everthing in insert mode
filetype on "Automatically detect file types
set noswapfile
set nobackup
set nowritebackup
let &titleold=getcwd()
highlight Comment ctermfg=green
autocmd! bufwritepost .vimrc source % "Automatic reloading of .vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> User interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ruler "show current position
set number "Show line numbers

set laststatus=2 "Status line

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number

set showmode
set showcmd
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> indent, text and tab and serch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab "Use spaces instead of tabs
set smarttab "Set smart when using tabs

"Set 1 tab = 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

"Set linebreak on 500 characters
set lbr
set tw=500

set autoindent "Set auto indent
set shiftround "nuse multiple of siftwidth when indent with '<' and ':"
set hlsearch "highlight search
set showmatch "show match

set undolevels=5000 "set undo backward 1000
set title

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Mapping keys.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Rebind <Leader> key
let mapleader = ","

"Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Remove hightlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"easier moving of code blocks
vnoremap < <gv
vnoremap > >gv


