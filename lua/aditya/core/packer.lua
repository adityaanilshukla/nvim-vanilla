vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Mason plugin for LSP, DAP, and more
  use {
    'williamboman/mason.nvim',
    run = ":MasonUpdate" -- Optional but recommended to ensure you're always up-to-date
  }

  -- Mason LSPConfig to bridge mason and nvim-lspconfig
  use 'williamboman/mason-lspconfig.nvim'

  -- Nvim LSPConfig
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  -- smart splitting between windows
  use('mrjones2014/smart-splits.nvim')

  -- comment plugin to use leader / to comment out lines
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- terminaltoggle plugin
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }


  -- nvim v0.7.2
  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })


  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }


  use {
    'lewis6991/gitsigns.nvim',
  }

  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use 'romgrk/barbar.nvim'

  -- banner and startup screen plugin
  use {
    'goolord/alpha-nvim',
    config = function()
      local dashboard = require 'alpha.themes.dashboard'

      -- Cool ASCII Art
      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
      }
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  }

  -- AI generated colorschemes plugin
  use { "svermeulen/text-to-colorscheme.nvim" }

  -- gruvbox material colorscheme
  use { 'sainnhe/gruvbox-material' }

  -- session manger plugin
  use { 'Shatur/neovim-session-manager' }

  -- plugin to make nvim ui telescope
  use { 'nvim-telescope/telescope-ui-select.nvim' }

  -- vertical line indentation plugin
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'master' }

  -- tokyonight colorscheme
  use { 'folke/tokyonight.nvim' }

  -- catpucchin colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- which key plugin to show keybindings
  use {
	  "folke/which-key.nvim",
	  config = function()
		  vim.o.timeout = true
		  vim.o.timeoutlen = 300
		  require("which-key").setup {
		  }
	  end
  }

  -- coc plugin
  use { 'neoclide/coc.nvim', branch = 'release' }

end)
