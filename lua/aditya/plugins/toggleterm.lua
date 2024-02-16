-- toggleterm.lua
local Terminal = require('toggleterm.terminal').Terminal

-- Setup a general floating terminal
local floating_terminal = Terminal:new({
  direction = "float",
  -- Additional configurations can be added here
})

-- Make the toggle function global
_G.toggle_floating_terminal = function()
  floating_terminal:toggle()
end

-- Toggle the general floating terminal with F7 and 7 in normal mode
vim.api.nvim_set_keymap('n', '<F7>', '<cmd>lua toggle_floating_terminal()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '7', '<cmd>lua toggle_floating_terminal()<CR>', { noremap = true, silent = true })

-- Toggle the general floating terminal with F7 and 7 in terminal mode
vim.api.nvim_set_keymap('t', '<F7>', '<C-\\><C-n><cmd>lua toggle_floating_terminal()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '7', '<C-\\><C-n><cmd>lua toggle_floating_terminal()<CR>', { noremap = true, silent = true })
