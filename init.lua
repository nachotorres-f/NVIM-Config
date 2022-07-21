vim.cmd([[

" ##### VIM CONFIGURATION #####

set title " Show the name of the archive in the window of the terminal
set number " Show the numbers of the lines
set numberwidth=1 " Width of the numbers lines
set relativenumber " Show the numbers columns relative to the current line
set mouse=a " Allow use the mouse (select text, move cursor)

set nowrap " No split the line if it is too long

set cursorline " Mark the current line
set cursorcolumn " Mark the current column
set colorcolumn=80 " Show the limit column to 80 characters

set tabstop=2

" Indentation to 2 spaces

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

set encoding=UTF-8 " Set encoding

syntax enable " Enable the syntax for the languages

" ##### PLUGINS ##### ========================================================

call plug#begin('~/vimfiles/autoload')

" Theme editor
Plug 'morhetz/gruvbox'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'Mofiqul/dracula.nvim'

" Tree explorer
Plug 'preservim/nerdtree'

" Like VScode 
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Search files and much more
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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
"Plug 'yggdroot/indentline'
Plug 'lukas-reineke/indent-blankline.nvim'

if has('unix')
  " Icons
  Plug 'ryanoasis/vim-devicons'
endif

" CSV Features
Plug 'chrisbra/csv.vim'

" Emmet
Plug 'mattn/emmet-vim'

" Better Search Files
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }

" Parser code for better color
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Jump to any location specified by two characters
Plug 'justinmk/vim-sneak'

" Automatic Window Resizing Plugin
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

call plug#end()

" ##### COLOR SCHEME ##### ===================================================

if (has("termguicolors"))
  set termguicolors
endif

colorscheme dracula " Set default color scheme

" ##### STATUS LINE ###### ===================================================

let g:airline_theme='base16_dracula' " Set theme status line

" ##### INDENT BLANKLINE ##### ===============================================

" ##### COC ##### ============================================================

" ##### LENS ##### ===========================================================

" ##### FZF ##### ============================================================

let g:fzf_preview_window = ['right:70%', 'ctrl-/']
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" ##### TREESITTER ##### =====================================================

"ts_config.setup {
   "ensure_installed = {
      ""lua",
      ""javascript",
      ""typescript",
      ""html",
      ""css",
      ""vue",
      ""svelte"
   "},
   "highlight = {
      "enable = true,
      "use_languagetree = true,
   "},
"}

" ##### KEYBIN'S ##### =======================================================

" ##### VIM ##### ============================================================

" Exit mode insert
imap jk <ESC>

" ##### FILES ##### ==========================================================

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

" Delete all buffers
nmap <leader>bd :%bdelete<CR>


" ##### MOVE PANELS ##### ====================================================

" Move left panel
nmap <C-h> <C-w>h
" Move bottom panel
nmap <C-j> <C-w>j
" Move top panel
nmap <C-k> <C-w>k
" Move right panel
nmap <C-l> <C-w>l


" ##### CLIPBOARD O.S. ##### =================================================

" Copy all line
nmap <leader>y "+y<CR>
" Copy selected text
vmap <leader>y "+y
" Paste
nmap <leader>p "+p<CR>
" Cut all line
nmap <leader>d "+d<CR>
" Cut selected text
vmap <leader>d "+d


" ##### TABS ##### ===========================================================

"Create a new tab
nmap <Leader>tn :tabnew<CR>
" Move to the next tab
nmap <Tab> :tabn<CR>
" Move to the previous tab
nmap <S-Tab> :tabp<CR>


" ##### FLOAT TERMINAL ###### ================================================

" Create a new float terminal
nmap <leader>t :FloatermNew<CR>
" Toggle the float terminal
nmap <leader>tt :FloatermToggle<CR>


" ##### FZF ##### ============================================================

" Open FZF (Search files)
"nmap <C-p> :GFiles<CR>
" Git status
nmap <leader>gst :GFiles?<CR>
" Git log
nmap <Leader>gl :Commits<CR>


" ##### NERDTREE ##### =======================================================

" Toggle Files Tree
nmap <leader>n :NERDTreeToggle<CR>


" ##### STARTIFY ##### =======================================================

" Show home page Startify
nmap <leader><leader> :Startify<CR>


" ##### GIT ##### ============================================================

nmap <leader>gb :Git branch<CR>
nmap <leader>gr :Git restore 
nmap <leader>grs :Git restore --staged 
nmap <leader>gsw :Git switch 
nmap <leader>gsc :Git switch -c 
nmap <leader>gd :Git diff<CR>
nmap <leader>ga :Git add 
nmap <leader>gaa :Git add .<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gf :Git fetch
nmap <leader>gm :Git merge 
nmap <leader>gpl :Git pull
nmap <leader>gph :Git push


" ##### EMMET ##### ==========================================================

imap <leader><Tab> <C-y>,


" ##### Telescope ##### ======================================================

" Find files using Telescope command-line sugar.
nmap <C-p> :Telescope find_files<CR>
nmap <C-t> :Telescope live_grep<CR>
]])

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = {  },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
