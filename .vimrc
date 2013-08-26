"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> User interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set ruler "show current position

"Configure backspace it should be
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set number "Show line numbers

set list listchars=tab:»·,trail:· "Show whitespace

" Highlight trailing/leading whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

"Set colors for solarized
set background=dark
colorscheme Tomorrow-Night
"let g:solarized_termcolors=256
"let base16colorspace=256
set t_Co=256

"Show status line
set laststatus=2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number

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
set tabstop=2

"Set linebreak on 500 characters
set lbr
set tw=500

set autoindent "Set auto indent
set shiftround "nuse multiple of siftwidth when indent with '<' and ':"
set hlsearch "highlight search
set showmatch "show match

set undolevels=1000 "set undo backward 1000
set title


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Plugins setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Enable filetype plugins
filetype plugin indent on
filetype indent on

"Load pathogen plugin
execute pathogen#infect()

"Load ctrl-p plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Show syntastic errors in location-list
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_loc_list_height=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Mapping keys.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"Set key mapping for Emmet
let g:user_emmet_expandabbr_key = '<c-e>'

"Set key mapping for Ctrlp
let g:ctrlp_map = '<c-p>'
