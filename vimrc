" -------------------------- PATHOGEN MOD STUFF ---------------------------
"
execute pathogen#infect()


" ----------------------------- PLUGIN SHORTCUTS --------------------------
"
map <leader>n :NERDTreeToggle<CR>
map <leader>td <Plug>TaskList

":let g:airline_theme='molokai'     " set airline theme for clearer bars (if using wombat)


" ----------------------------- NORMAL STUFF ------------------------------
"
colorscheme slate
set background=dark
set number			                " show line numbers
"set relativenumber                 " sets relative line numbers
"let loaded_matchparen = 1	        " disables parenthesis highlighting

set tabstop=4			            " set tab width to 4
set shiftwidth=4
set expandtab			            " use spaces for tabs
set softtabstop=4                   " for deleting 4 spaces at a time?

set cindent			                " tries to auto indent C style code
set autoindent                      " keeps things indented?
set nosmartindent                   " supposed to stop python # comments from being pushed to left
set linebreak                       " stops lines from wrapping in the middle of words
set colorcolumn=100                 " highlight at 100 characters
filetype indent on

set hidden                          " something to do with multiple buffers
set history=500                     " remember more previous commands

set wildmenu                        " fix autocomplete for opening files with :e
set wildmode=list:longest

set scrolloff=3                     " keep 3 lines visible around current line when scrolling

set hlsearch                        " start highlighting mathces as they are typed
set incsearch
set smartcase                       " case insensitive search unless capitals are specified
set ignorecase

set backupdir=~/.vim/backup//       " this should put all swap files and backups in one folder
set directory=~/.vim/swp//

set modelines=0                     " something to do with a security flaw
set nocompatible
set encoding=utf-8

" --------------------- FOR LANGUAGE SPECIFIC SETTINGS? ---------------------
"
filetype plugin on


" ---------------------------- SHORTCUT MAPPINGS ----------------------------
"
map <leader><space> :noh<cr>        " get rid of highlighting
inoremap jj <esc>                   " easier escape back to normal mode
