
-- global status line
vim.o.laststatus = 3

-- remove ~ at the end of each buffer
vim.opt.fillchars = { eob = " " }


vim.opt.termguicolors = true
--
-- set relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- start lualine
require('lualine').setup {}

-- start git signs
require('gitsigns').setup()

vim.o.background = "dark"

-- make nvim not lauch last session on start
local Path = require('plenary.path')
local config = require('session_manager.config')
require('session_manager').setup({
  autoload_mode = config.AutoloadMode.Disabled, -- Disable autoload
})

require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    }
  }
}
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

-- Markdown Preview settings
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_browser = "firefox"
-- vim.g.mkdp_theme = 'dark'
