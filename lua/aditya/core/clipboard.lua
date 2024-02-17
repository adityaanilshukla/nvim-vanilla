-- clipboard.lua

local os_info = vim.loop.os_uname()

if os_info.sysname == "Linux" then
    -- Linux clipboard settings
    vim.o.clipboard = "unnamedplus"
    vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })
elseif os_info.sysname:match("Windows") or os_info.sysname:match("NT") then
    -- Windows clipboard settings
    -- For Windows, Neovim should automatically use the system clipboard for "+ and "* registers.
    -- You can define specific keybindings if required.
end
