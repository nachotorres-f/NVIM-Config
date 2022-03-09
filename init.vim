" ##### VIM CONFIGURATION #####

set title " Show the name of the archive in the window of the terminal
set number " Show the numbers of the lines
set numberwidth=1 " Width of the numbers lines
set relativenumber " Show the numbers columns relative to the current line
set mouse=a " Allow use the mouse (select text, move cursor)

set nowrap " No split the line if it is too long

set cursorline " Mark the current line
"set cursor column " Mark the current column
set colorcolumn=80 " Show the limit column to 80 characters

" Indentation to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insert spaces and not <Tab>s

set hidden " Allow change of buffer without save it

set ignorecase " Ignore upper when you do search
set smartcase " Don't ignore upper if the search contains upper

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

" ##### PLUGINS #####

call plug#begin('~/vimfiles/autoload')

" Theme editor
Plug 'morhetz/gruvbox'

" Tree explorer
Plug 'preservim/nerdtree'

" Like VScode 
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Search files and much more
Plug 'junegunn/fzf', { 'do': {-> fzf#install() } }

" Git commands
Plug 'tpope/vim-fugitive'

" Status line
Plug 'vim-airline/vim-airline'

" Themes for status line
Plug 'vim-airline/vim-airline-themes'

" Commands to comment lines
Plug 'scrooloose/nerdcommenter'

" Float terminal
Plug 'voldikss/vim-floaterm'

" Homepage
Plug 'mhinz/vim-startify'

" Syntax support to tsx
Plug 'HerringtonDarkholme/yats.vim'

" Syntax support to js jsx
Plug 'neoclide/vim-jsx-improve'

" Syntax highlight to json 
Plug 'neoclide/jsonc.vim'

" View indent lines
Plug 'yggdroot/indentline'

call plug#end()

" ##### COLOR SCHEME #####

colorscheme gruvbox " Set default color scheme

let g:airline_theme='wombat' " Set theme status line

" ##### INDENT LINES #####

let g:indentLine_char_list = ['|', '¦', '┆', '┊'] " Characters to show the indent lines
let g:indentLine_enabled = 1 " Set enabled indent line

" ##### KEYBIN'S #####

" ##### FILES #####
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

" ##### MOVE PANELS #####
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

" ##### CLIPBOARD O.S. #####
" Copy
nmap <leader>y "+y
" Paste
nmap <leader>p "+p
" Cut
nmap <leader>d "+d

" ##### TABS #####
"Create a new tab
nmap <Leader>tn :tabnew<CR>
" Move to the next tab
nmap <Tab> :tabn<CR>
" Move to the previous tab
nmap <S-Tab> :tabp<CR>

" ##### FLOAT TERMINAL ######
" Create a new float terminal
nmap <leader>t :FloatermNew<CR>
" Toggle the float terminal
nmap <leader>tt :FloatermToggle<CR>

" ##### FZF #####
" Open FZF (Search files)
nmap <C-p> :FZF<CR>

" Toggle Files Tree
nmap <leader>n :NERDTreeToggle<CR>

" ##### STARTIFY #####
" Show home page Startify
nmap <leader><leader> :Startify<CR>

" ##### GIT ##### 
" Show branches
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
