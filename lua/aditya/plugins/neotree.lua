-- -- neotree.lua
--
-- -- Function to toggle NeoTree focus
-- _G.toggle_neotree_focus = function()
--     if vim.bo.filetype == "neo-tree" then
--         vim.cmd("wincmd p")
--     else
--         vim.cmd("Neotree focus")
--     end
-- end
--
-- -- Set key mappings for NeoTree
-- vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>o', ':lua toggle_neotree_focus()<CR>', { noremap = true, silent = true })


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

-- Additional setup for NeoTree for copying paths
require('neo-tree').setup {
  window = {
    mappings = {
      ['Y'] = function(state)
        local node = state.tree:get_node()
        local filepath = node:get_id()
        local filename = node.name
        local modify = vim.fn.fnamemodify

        local results = {
          filepath,
          modify(filepath, ':.'),
          modify(filepath, ':~'),
          filename,
          modify(filename, ':r'),
          modify(filename, ':e'),
        }

        local i = vim.fn.inputlist({
          'Choose to copy to clipboard:',
          '1. Absolute path: ' .. results[1],
          '2. Path relative to CWD: ' .. results[2],
          '3. Path relative to HOME: ' .. results[3],
          '4. Filename: ' .. results[4],
          '5. Filename without extension: ' .. results[5],
          '6. Extension of the filename: ' .. results[6],
        })

        if i > 0 then
          local result = results[i]
          if not result then return print('Invalid choice: ' .. i) end
          -- Use the "+ register for the system clipboard
          vim.fn.setreg('+', result)
          vim.notify('Copied: ' .. result)
        end
      end
    }
  }
}
