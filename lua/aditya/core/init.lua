-- Load Packer configuration
require('aditya.core.packer')
-- Load key mappings
require('aditya.core.remap')
-- load my options
require('aditya.core.options')
-- Set clipboard option for Windows
vim.opt.clipboard = 'unnamedplus'
