
-- Check if session manager is available
local is_session_manager_available = pcall(require, "session_manager")

if is_session_manager_available then
    local sm = require("session_manager")

    -- Load the last session
    vim.api.nvim_set_keymap('n', '<leader>Sl', '<cmd>lua require("session_manager").load_last_session()<CR>', { noremap = true, silent = true, desc = "Load last session" })

    -- Save the current session
    vim.api.nvim_set_keymap('n', '<leader>Ss', '<cmd>lua require("session_manager").save_current_session()<CR>', { noremap = true, silent = true, desc = "Save this session" })

    -- Delete a session
    vim.api.nvim_set_keymap('n', '<leader>Sd', '<cmd>lua require("session_manager").delete_session()<CR>', { noremap = true, silent = true, desc = "Delete session" })

    -- Search and load a session
    vim.api.nvim_set_keymap('n', '<leader>Sf', '<cmd>lua require("session_manager").load_session()<CR>', { noremap = true, silent = true, desc = "Search sessions" })

    -- Load the session for the current directory
    vim.api.nvim_set_keymap('n', '<leader>S.', '<cmd>lua require("session_manager").load_current_dir_session()<CR>', { noremap = true, silent = true, desc = "Load current directory session" })
end




