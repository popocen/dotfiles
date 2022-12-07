local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use {'folke/tokyonight.nvim'}
	use {'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim'}

	use { 'nvim-tree/nvim-tree.lua' }
	use { 'nvim-treesitter/nvim-treesitter' }
	use { 'akinsho/bufferline.nvim' }
	-- Config LSP 
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'L3MON4D3/LuaSnip' }

	use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }

  if install_plugins then
    require('packer').sync()
  end
end)
