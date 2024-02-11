local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- harpoon command
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<S-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<S-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<S-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<S-i>", function() ui.nav_file(4) end)

