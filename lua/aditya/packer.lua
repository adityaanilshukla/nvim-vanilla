vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
  	end
  })


  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use( 'nvim-treesitter/playground' )
  use( 'theprimeagen/harpoon' )
  use( 'mbbill/undotree' )
  use( 'tpope/vim-fugitive' )

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
  -- to use Kitty multiplexer support, run the post install hook
  use({ 'mrjones2014/smart-splits.nvim', run = './kitty/install-kittens.bash' })

  -- comment plugin to use leader / to comment out lines
  use {
  'numToStr/Comment.nvim',
  config = function()
	  require('Comment').setup()
  end
  }

  -- terminaltoggle plugin
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}


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


 use{ 
 'lewis6991/gitsigns.nvim',
 }


 -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
 use 'romgrk/barbar.nvim'

end)
