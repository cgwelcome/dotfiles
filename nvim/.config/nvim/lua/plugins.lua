return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
		'TimUntersberger/neogit',
		requires = 'nvim-lua/plenary.nvim'
	}
	use 'lewis6991/gitsigns.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}
	use {
		'echasnovski/mini.nvim',
		branch = 'stable'
	}
end)
