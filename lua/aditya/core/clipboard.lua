
-- for linux
-- Enable clipboard support
vim.o.clipboard = "unnamedplus"
-- copy and paste from system clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })
