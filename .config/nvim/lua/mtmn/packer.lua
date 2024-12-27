vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      'navarasu/onedark.nvim',
      as = 'onedark'
  }
  use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }
  use('tpope/vim-fugitive')
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { 'ellisonleao/gruvbox.nvim' }
  use { 'polirritmico/monokai-nightasty.nvim'}
  use { 'p00f/alabaster.nvim'}
  use {
        'zenbones-theme/zenbones.nvim',
        requires = { 'rktjmp/lush.nvim' }
  }
    use { 'RRethy/base16-nvim' }
  use { 'ntk148v/komau.vim' }
  use {
      "jesseleite/nvim-noirbuddy",
      requires = { "tjdevries/colorbuddy.nvim" }
  }
  use 'ThePrimeagen/vim-be-good'
end)
