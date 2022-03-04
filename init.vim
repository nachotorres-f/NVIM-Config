set title " Show the name of the archive in the window of the terminal
set number " Show the numbers of the lines
set numberwidth=1 " Width of the numbers lines
set relativenumber " Show the numbers columns relative to the current line
set mouse=a " Allow use the mouse (select text, move cursor)

set nowrap " No split the line if it is too long

set cursorline " Mark the current line
"set cursorcolumn " Mark the current columnt
set colorcolumn=80 " Show the limit column to 80 characters

" Indentation to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insert spaces and not <Tab>s

set hidden " Allow change of buffer without save it

set ignorecase " Ignore mayus when you do search
set smartcase " Don't ignore mayus if the seatch contains mayus

set spelllang=en,es " Check words using dictionaries in English and Spanish

set termguicolors " Active true colors in the terminal
set background=dark " Background of the theme: light or dark

set clipboard=unnamed
set showcmd
set ruler
set showmatch
set sw=2
set laststatus=2

syntax enable " Enable the syntax for the languages

" Plugins
call plug#begin('~/vimfiles/autoload')

Plug 'morhetz/gruvbox' " gruvbox
Plug 'preservim/nerdtree' " NerdTree
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Coc
Plug 'junegunn/fzf', { 'do': {-> fzf#install() } } " Fzf
Plug 'tpope/vim-fugitive' " Fugitive
Plug 'vim-airline/vim-airline' " Vim Airline
Plug 'vim-airline/vim-airline-themes' " Vim Airline Themes
Plug 'scrooloose/nerdcommenter' " NerdCommenter
Plug 'voldikss/vim-floaterm' " FloaTerm
Plug 'mhinz/vim-startify' " Startify

call plug#end()

colorscheme gruvbox " Set default colorscheme

let g:airline_theme='wombat'

" keybin's

" Set leader key
let mapleader=" " 
" Save a file
nmap <leader>w :w<CR>
" Exit from a file
nmap <leader>q :q<CR>
" Save and exit from a file
nmap <leader>wq :wq<CR>
" Reload VIM
nmap <leader>so :so%<CR> 

" Move left panel
nmap <C-h> <C-w>h
" Move bottom panel
nmap <C-j> <C-w>j
" Move top panel
nmap <C-k> <C-w>k
" Move right panel
nmap <C-l> <C-w>l

" Exit mode insert
imap jk <ESC>

"Create a new tab
nmap <Leader>tn :tabnew<CR>
" Move to the next tab
nmap <Tab> :tabn<CR>
" Move to the previous tab
nmap <S-Tab> :tabp<CR>

" Create a new float terminal
nmap <leader>t :FloatermNew<CR>
" Toggle the float terminal
nmap <leader>tt :FloatermToggle<CR>

" Open FZF (Search files)
nmap <C-p> :FZF<CR>

" Toggle Files Tree
nmap <leader>n :NERDTreeToggle<CR>

" Show home page Startify
nmap <leader><leader> :Startify<CR>

" Git
" Show branchs
nmap <leader>gb :Git branch<CR>
" Restore not staged files
nmap <leader>gr :Git restore 
" Restore staged files
nmap <leader>grs :Git restore --staged 
" Change branch
nmap <leader>gsw :Git switch 
" Create and change branch
nmap <leader>gsc :Git switch -c 
" View status files
nmap <leader>gst :Git status<CR>
" View differencies files
nmap <leader>gd :Git diff<CR>
" Add files to stage
nmap <leader>ga :Git add 
" Add all files to stage
nmap <leader>gaa :Git add .<CR>
" Make commit
nmap <leader>gc :Git commit<CR>
" View logs
nmap <leader>gl :Git log<CR>
" Get remote changes
nmap <leader>gf :Git fetch<CR>
" Merge branchs
nmap <leader>gm :Git merge 
" Get remote changes and merge
nmap <leader>gpl :Git pull<CR>
" Upload local changes to repository
nmap <leader>gph :Git push<CR>
