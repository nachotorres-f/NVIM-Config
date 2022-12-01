local keymap = vim.keymap.set

vim.g.mapleader = ' '

-- VIM
keymap('i', 'jk', '<ESC>') -- Exit mode INSERT

-- FILES
keymap('n', '<Leader>w', ':w<CR>') -- Save a file
keymap('n', '<Leader>q', ':q<CR>') -- Quit a file
keymap('n', '<Leader>bd', ':%bdelete<CR>') -- Delete all buffers 
keymap('n', '<Leader>so', ':so%<CR>') -- Reload neovim config

-- MOVE PANELS
keymap('n', '<C-h>', '<C-w>h') -- Move left panel
keymap('n', '<C-j>', '<C-w>j') -- Move down panel
keymap('n', '<C-k>', '<C-w>k') -- Move up panel
keymap('n', '<C-l>', '<C-w>l') -- Move right panel

-- CLIPBOARD O.S.
keymap('v', '<Leader>y', '"+y') -- Copy selected text
keymap('n', '<Leader>p', '"+p') -- Paste from clipboard
keymap('v', '<Leader>d', '"+d') -- Cut selected text

-- TABS
keymap('n', '<Leader>tn', ':tabnew<CR>') -- Open new tab
keymap('n', '<Tab>', ':tabn<CR>') -- Move next tab
keymap('n', '<S-Tab>', ':tabp<CR>') -- Move prev tab

-- FLOAT TERMINAL
keymap('n', '<Leader>tt', ':FloatermNew<CR>') -- Open terminal

-- FZF
keymap('n', '<Leader>gst', ':GFiles?<CR>') -- Show the git status of the files
keymap('n', '<Leader>gl', ':Commits<CR>') -- Show the list commit

-- NERDTREE
keymap('n', '<Leader>n', ':NERDTreeToggle<CR>') -- Toggle NERDTree

-- STARTIFY
keymap('n', '<Leader><Leader>', ':Startify<CR>') -- Open Startify

-- EMMET
keymap('i', '<Leader><Tab>', '<C-y>,') -- Execute emmet

-- TELESCOPE
keymap('n', '<C-p>', ':Telescope find_files<CR>') -- Search files in directories
keymap('n', '<C-t>', ':Telescope live_grep<CR>') -- Search words in files
