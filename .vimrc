set nocompatible "This fixes the problem where arrow keys do not function properly on some systems    .
syntax on  "Enables syntax highlighting for programming languages
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=2  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=2  "Assists code formatting
set guifont=Inconsolata\ 14
colorscheme pablo "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
set background=dark
set foldmethod=manual  "Lets you hide sections of code
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
filetype plugin indent on
set textwidth=80
map <F4> :emenu <C-Z>
"--- End sweet menu
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap [ []<ESC>i
