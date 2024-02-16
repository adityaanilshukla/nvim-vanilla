
-- global status line
vim.o.laststatus = 3

-- remove ~ at the end of each buffer
vim.opt.fillchars = { eob = " " }

-- local Transparency = require( "after/plugin/colors")

-- set relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- start lualine
require('lualine').setup {}

-- start git signs
require('gitsigns').setup()

vim.o.background = "dark"

-- set the colorscheme
vim.cmd("colorscheme rose-pine")

-- Transparency.applyOnSplits()
