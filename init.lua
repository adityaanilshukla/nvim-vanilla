
-- set the runtime path to be nvim-vanilla directory
local user = os.getenv("USER")
local vanilla_config_path = "/home/" .. user .. "/.config/nvim-vanilla"
vim.o.runtimepath = vim.o.runtimepath .. ',' .. vanilla_config_path

-- Require the main configuration file from the 'aditya' module
require('aditya')

-- set relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable clipboard support
vim.o.clipboard = "unnamedplus"

-- copy and paste from system clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })

-- enable treesitter plugins
vim.cmd [[
runtime after/plugin/colors.lua
runtime after/plugin/telescope.lua
runtime after/plugin/treesitter.lua
runtime after/plugin/harpoon.lua
runtime after/plugin/undotree.lua
]]

-- start lualine
require('lualine').setup()

-- start git signs
require('gitsigns').setup()

