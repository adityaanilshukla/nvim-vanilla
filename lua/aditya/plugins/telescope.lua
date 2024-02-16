local builtin = require('telescope.builtin')


-- telescope command
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- Keybinding for Telescope Colorscheme Picker
vim.keymap.set('n', '<leader>ft', function()
    require('telescope.builtin').colorscheme({ enable_preview = true })
end, { desc = 'Find themes' })

-- Keybinding for Telescope Live Grep (Search for words)
vim.keymap.set('n', '<leader>fw', function()
    require('telescope.builtin').live_grep()
end, { desc = 'Find words' })

-- Keybinding for Telescope Live Grep including hidden files and ignoring .gitignore
vim.keymap.set('n', '<leader>fW', function()
    require('telescope.builtin').live_grep({
        additional_args = function(args)
            return vim.tbl_extend('force', args, { '--hidden', '--no-ignore' })
        end
    })
end, { desc = 'Find words in all files' })
