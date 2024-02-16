-- neotree.lua

-- Function to toggle NeoTree focus
_G.toggle_neotree_focus = function()
    if vim.bo.filetype == "neo-tree" then
        vim.cmd("wincmd p")
    else
        vim.cmd("Neotree focus")
    end
end

-- Set key mappings for NeoTree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':lua toggle_neotree_focus()<CR>', { noremap = true, silent = true })
