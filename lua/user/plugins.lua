local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/vimfiles/autoload')

-- Theme editor
Plug 'morhetz/gruvbox'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'Mofiqul/dracula.nvim'

-- Tree explorer
Plug 'preservim/nerdtree'

-- Git Tree explorer
Plug 'xuyuanp/nerdtree-git-plugin'

-- Like VScode 
Plug('neoclide/coc.nvim', {['branch'] = 'release', ['do'] = vim.fn['coc#util#install']})
Plug('neoclide/coc-git', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-prettier', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-eslint', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-tslint', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-html', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-css', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-tsserver', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-json', {['do'] = 'yarn install --frozen-lockfile'})
Plug('fannheyward/coc-markdownlint', {['do'] = 'yarn install --frozen-lockfile'})
Plug('marlonfan/coc-phpls', {['do'] = 'yarn install --frozen-lockfile'})
Plug('josa42/coc-sh', {['do'] = 'yarn install --frozen-lockfile'})
Plug('fannheyward/coc-pyright', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-vetur', {['do'] = 'yarn install --frozen-lockfile'})
Plug('neoclide/coc-pairs', {['do'] = 'yarn install --frozen-lockfile'})

-- Search files and much more
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'

-- Git commands
Plug 'tpope/vim-fugitive'

-- Status line
Plug 'vim-airline/vim-airline'

-- Themes for status line
Plug 'vim-airline/vim-airline-themes'

-- Commands to comment lines
Plug 'scrooloose/nerdcommenter'

-- Float terminal
Plug 'voldikss/vim-floaterm'

-- Homepage
Plug 'mhinz/vim-startify'

-- Syntax support to tsx
Plug 'HerringtonDarkholme/yats.vim'

-- Syntax support to js jsx
Plug 'neoclide/vim-jsx-improve'

-- Syntax highlight to json 
Plug 'neoclide/jsonc.vim'

-- View indent lines
Plug 'lukas-reineke/indent-blankline.nvim'

-- Icons
Plug 'ryanoasis/vim-devicons'

-- CSV Features
Plug 'chrisbra/csv.vim'

-- Emmet
Plug 'mattn/emmet-vim'

-- Better Search Files
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.0' })
-- or                                , { 'branch': '0.1.x' }

-- Parser code for better color
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- Jump to any location specified by two characters
Plug 'justinmk/vim-sneak'

-- Automatic Window Resizing Plugin
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

vim.call('plug#end')
