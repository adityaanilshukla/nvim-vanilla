-- set the runtime path to be nvim-vanilla directory
local user = os.getenv("USER")
local vanilla_config_path = "/home/" .. user .. "/.config/nvim-vanilla"
vim.o.runtimepath = vim.o.runtimepath .. ',' .. vanilla_config_path

-- Require the main configuration files from the 'aditya' module
require('aditya.core')
-- Require the plugins from the 'aditya' module
require('aditya.plugins')
