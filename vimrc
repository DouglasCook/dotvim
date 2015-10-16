" -------------------------- PATHOGEN MOD STUFF ---------------------------
"
execute pathogen#infect()


" ----------------------------- PLUGIN SHORTCUTS --------------------------
"
map <leader>n :NERDTreeTabsToggle<CR>
map <leader>td <Plug>TaskList
" search in growthintel by default
nnoremap <leader>p :CtrlP /Users/douglas/growthintel/<CR>

:let g:airline_theme='molokai'     " set airline theme for clearer bars (if using wombat)

map <leader>t :TagbarToggle<CR>


" ----------------------------- NORMAL STUFF ------------------------------
"
syntax on
colorscheme slate
"set background=dark
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
set colorcolumn=80                  " highlight at 100 characters
filetype indent on

set hidden                          " something to do with multiple buffers
set history=500                     " remember more previous commands

set wildmenu                        " fix autocomplete for opening files with :e
set wildmode=list:longest

set scrolloff=3                     " keep 3 lines visible around current line when scrolling

set hlsearch                        " start highlighting matches as they are typed
set incsearch
set smartcase                       " case insensitive search unless capitals are specified
set ignorecase

set backupdir=~/.vim/backup//       " this should put all swap files and backups in one folder
set directory=~/.vim/swp//

set modelines=0                     " something to do with a security flaw
set nocompatible
set encoding=utf-8

set noerrorbells                    " disable error noises/flashes
set novisualbell
set vb t_vb=

" reload vimrc automatically when it is saved
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set tags=./tags;/                   " search up through directories for tags file

" --------------------- FOR LANGUAGE SPECIFIC SETTINGS? ---------------------
"
filetype plugin on


" ---------------------------- SHORTCUT MAPPINGS ----------------------------
" can't have inline commments here, whitespace after the mapping is added to it!
"
" get rid of highlighting
nnoremap <leader><space> :noh<CR>

" easier escape back to normal mode
inoremap jj <esc>

" saving
nnoremap <leader>s :w<CR>
cnoreabbrev W w

" quitting
nnoremap <leader>q :q<CR>

" stop the weird command history window from popping up when trying to quit
map q: :q

" get rid of annoying f1 help popup
:nmap <F1> <nop>
:imap <F1> <nop>

" strip all trailing whitespace
nnoremap <leader>a :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:w<CR>

" add a pdb breakpoint

function! InsertPdb()
    let trace = expand("import pdb; pdb.set_trace()")
    execute "normal o".trace
endfunction

nnoremap <leader>p :call InsertPdb()<CR>

" colourschemes
nnoremap <F2> :colorscheme wombat256mod<CR>
nnoremap <F3> :colorscheme solarized<CR>
