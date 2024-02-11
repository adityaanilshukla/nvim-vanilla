-- Function to check if a command is executable
local function is_executable(command)
    return vim.fn.executable(command) == 1
end

vim.g.mapleader = " "

-- NeoTree remap
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Explorer" })
vim.keymap.set("n", "<leader>o", function()
    if vim.bo.filetype == "neo-tree" then
        vim.cmd("wincmd p")
    else
        vim.cmd("Neotree focus")
    end
end, { desc = "Toggle Explorer Focus" })

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
vim.keymap.set('n', '|', "<cmd>vsplit<CR><cmd>wincmd w<CR>", {desc = "Vertical Split"})
vim.keymap.set('n', '\\', "<cmd>split<CR><cmd>wincmd w<CR>", {desc = "Horizontal Split"})


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


-- Toggle a terminal in floating window mode using F7
vim.api.nvim_set_keymap('n', '<F7>', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = "Toggle floating terminal with F7" })
vim.api.nvim_set_keymap('t', '<F7>', '<C-\\><C-n><cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = "Toggle floating terminal with F7" })

-- Toggle a terminal in floating window mode using 7
vim.api.nvim_set_keymap('n', '7', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = "Toggle floating terminal with 7" })
vim.api.nvim_set_keymap('t', '7', '<C-\\><C-n><cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = "Toggle floating terminal with 7" })
-- Importing the ToggleTerm module
local Terminal = require('toggleterm.terminal').Terminal

-- Create a new Terminal instance for lazygit
local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float"
})

-- Function to toggle the lazygit terminal
function _lazygit_toggle()
  lazygit:toggle()
end

-- Set the keymap for <leader>gg to open lazygit
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- Set 'q' in terminal mode to close the floating terminal when lazygit is running
vim.api.nvim_set_keymap("t", "q", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
