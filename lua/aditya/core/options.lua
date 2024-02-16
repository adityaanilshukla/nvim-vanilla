
-- global status line
vim.o.laststatus = 3

-- remove ~ at the end of each buffer
vim.opt.fillchars = { eob = " " }

-- set relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- start lualine
require('lualine').setup {}

-- start git signs
require('gitsigns').setup()

vim.o.background = "dark"

-- text to colorscheme defualt generation
require('text-to-colorscheme').setup {
  ai = {
    openai_api_key = "OPENAPI_API_KEY",
  },
hex_palettes = {
   {
      name = "red baron",
      background_mode = "dark",
      background = "#1c1c1c",
      foreground = "#f7f7f7",
      accents = {
         "#ff0000",
         "#ff4d00",
         "#ff9900",
         "#ffcc00",
         "#ffea00",
         "#ffff00",
         "#97d900",
      },
   },
},
default_palette = "red baron",
}

-- make nvim not lauch last session on start
local Path = require('plenary.path')
local config = require('session_manager.config')
require('session_manager').setup({
  autoload_mode = config.AutoloadMode.Disabled, -- Disable autoload
})

-- Then, set up an autocommand to open Alpha when Neovim starts
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        require("alpha").start()
    end,
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
