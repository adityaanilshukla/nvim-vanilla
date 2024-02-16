-- lazygit.lua
local Terminal = require('toggleterm.terminal').Terminal

-- Lazygit terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",  -- Set your preferred directory
  direction = "float",
  -- Additional terminal configurations...
})

-- Function to toggle the lazygit terminal
function _G.lazygit_toggle()
  lazygit:toggle()
end

-- Set keymap for <leader>gg to open lazygit
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua lazygit_toggle()<CR>", { noremap = true, silent = true })

-- Function to close the terminal
function _G.close_terminal()
  if lazygit:is_open() then
    lazygit:close()
  end
end

-- Keymap to close the terminal by pressing 'q' in terminal mode
vim.api.nvim_set_keymap("t", "q", "<cmd>lua close_terminal()<CR>", { noremap = true, silent = true })
