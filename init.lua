
-- set the runtime path to be nvim-vanilla directory
local user = os.getenv("USER")
local vanilla_config_path = "/home/" .. user .. "/.config/nvim-vanilla"
vim.o.runtimepath = vim.o.runtimepath .. ',' .. vanilla_config_path

-- global status line
vim.o.laststatus = 3

-- remove ~ at the end of each buffer
vim.opt.fillchars = { eob = " " }

-- create your own file with your api_keys
local api_keys = require('api_keys')

-- Require the main configuration file from the 'aditya' module
require('aditya')

local Transparency = require('after/plugin/colors')

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
runtime after/plugin/telescope.lua
runtime after/plugin/treesitter.lua
runtime after/plugin/harpoon.lua
runtime after/plugin/undotree.lua
]]

Transparency.applyOnSplits()

-- start lualine
require('lualine').setup {}

-- start git signs
require('gitsigns').setup()

vim.o.background = "dark"

-- set the colorscheme
vim.cmd("colorscheme rose-pine")

require('text-to-colorscheme').setup {
  ai = {
    openai_api_key = api_keys.open_ai,
     gpt_model = "gpt-3.5-turbo-0613",
  },
}

