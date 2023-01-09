local options = {
  title = true, -- Show the name of the archive in the window of the terminal
  number = true, -- Show the numbers of the lines
  numberwidth = 1, -- Width of the numbers lines
  relativenumber = true, --Show the numbers columns relative to the current line
  mouse = 'a', -- Allow use the mouse
  
  cursorline = true, -- Mark the current line
  cursorcolumn = true, -- Mark the current column
  colorcolumn = '80', -- Show the limit column to 80 characters

  -- Config tab to 2 spaces
  tabstop = 2, 
  shiftwidth = 2,
  softtabstop = 2,
  shiftround = true,
  expandtab = true, -- Insert spaces and not tabs

  hidden = true, -- Allow charge of buffer without save it

  ignorecase = true, -- Ignore upper when you do search
  smartcase = true, -- Don't ignore upper if the search contains upper

  spelllang = 'en,es', -- Check words using dictionaries in English and Spanish

  termguicolors = true, -- Active true colors in the terminal
  background = 'dark', -- Background of the theme: light or dark

  clipboard = 'unnamed',
  showcmd = true,
  ruler = true,
  showmatch = true,
  sw = 2,
  laststatus = 2,

  encoding = 'UTF-8' -- Set encoding
}

vim.cmd 'syntax enable' -- Enable syntax
vim.cmd 'set nowrap' -- No split the line if it is too long
vim.cmd 'colorscheme dracula' -- Set theme color of nvim
vim.cmd 'set fileformats=unix,dos' -- Set lf end line

for k, v in pairs(options) do
  vim.opt [k] = v
end
