-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } use({
	  'rose-pine/neovim',
	  as = 'rose-pine', config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use( 'nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use("nvim-treesitter/nvim-treesitter-context");
  use('nvim-treesitter/playground')
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use{"williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  }
  use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
		  require"startup".setup()
	  end
  }
  use {
	  "nvim-telescope/telescope-file-browser.nvim",
	  requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use({
	  "jackMort/ChatGPT.nvim",
	  config = function()
		  require("chatgpt").setup()
	  end,
	  requires = {
		  "MunifTanjim/nui.nvim",
		  "nvim-lua/plenary.nvim",
		  "folke/trouble.nvim",
		  "nvim-telescope/telescope.nvim"
	  }
  })
  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }
  use({
	  "kylechui/nvim-surround",
	  tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	  config = function()
		  require("nvim-surround").setup({
			  -- Configuration here, or leave empty to use defaults
		  })
	  end
  })
end)
