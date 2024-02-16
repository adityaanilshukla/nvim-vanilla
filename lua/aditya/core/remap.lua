vim.g.mapleader = " "

-- Normal --
-- Standard Operations
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", {expr = true, desc = "Move cursor down"})
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", {expr = true, desc = "Move cursor up"})
vim.keymap.set('n', '<leader>w', "<cmd>w<cr>", {desc = "Save"})
vim.keymap.set('n', '<leader>q', "<cmd>confirm q<cr>", {desc = "Quit"})
vim.keymap.set('n', '<leader>Q', "<cmd>confirm qall<cr>", {desc = "Quit all"})
vim.keymap.set('n', '<leader>n', "<cmd>enew<cr>", {desc = "New File"})
vim.keymap.set('n', '<C-s>', "<cmd>w!<cr>", {desc = "Force write"})
vim.keymap.set('n', '<C-q>', "<cmd>qa!<cr>", {desc = "Force quit"})
-- Set keymaps for vertical and horizontal splits
vim.keymap.set('n', '|', '<cmd>vsplit<CR><C-w>w', {desc = "Vertical Split"})
vim.keymap.set('n', '\\', '<cmd>split<CR><C-w>w', {desc = "Horizontal Split"})



-- Close buffer
vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>bdelete<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
-- Force close buffer
vim.api.nvim_set_keymap('n', '<leader>C', '<cmd>bdelete!<CR>', { noremap = true, silent = true, desc = 'Force close buffer' })
-- Next buffer
vim.api.nvim_set_keymap('n', ']b', '<cmd>bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
-- Previous buffer
vim.api.nvim_set_keymap('n', '[b', '<cmd>bprevious<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
-- Move buffer tab right (requires a custom function)
vim.api.nvim_set_keymap('n', '>b', '<cmd>BufferMoveNext<CR>', { noremap = true, silent = true, desc = 'Move buffer tab right' })
-- Move buffer tab left (requires a custom function)
vim.api.nvim_set_keymap('n', '<b', '<cmd>BufferMovePrevious<CR>', { noremap = true, silent = true, desc = 'Move buffer tab left' })

-- Improved Terminal Navigation
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', { noremap = true, silent = true, desc = 'Terminal left window navigation' })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', { noremap = true, silent = true, desc = 'Terminal down window navigation' })
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', { noremap = true, silent = true, desc = 'Terminal up window navigation' })
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', { noremap = true, silent = true, desc = 'Terminal right window navigation' })

-- Smart Splits Navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>lua require("smart-splits").move_cursor_left()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>lua require("smart-splits").move_cursor_down()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua require("smart-splits").move_cursor_up()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>lua require("smart-splits").move_cursor_right()<CR>', { noremap = true, silent = true })

-- Smart Splits Resizing
vim.api.nvim_set_keymap('n', '<C-Up>', '<cmd>lua require("smart-splits").resize_up()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<cmd>lua require("smart-splits").resize_down()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', '<cmd>lua require("smart-splits").resize_left()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<cmd>lua require("smart-splits").resize_right()<CR>', { noremap = true, silent = true })

-- Toggle comment line in normal mode
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)<CR>', { noremap = true, silent = true, desc = "Toggle comment line" })

-- Toggle comment for selection in visual mode
vim.api.nvim_set_keymap('v', '<leader>/', '<esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', { noremap = true, silent = true, desc = "Toggle comment for selection" })

-- remap <C-BS> to <C-W> in insert and normal mode
vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})
