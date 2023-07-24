-- base needed for lazy to work
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- All plugins made
local plugins = {
  -- themes
  'navarasu/onedark.nvim',
  'folke/tokyonight.nvim',

  -- file tree and search
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',

  -- visual stuff
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'SmiteshP/nvim-navic',
  'utilyre/barbecue.nvim',

  -- autocomplete and LSP 
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'neovim/nvim-lspconfig',
  'williamboman/mason-lspconfig.nvim',
  'williamboman/mason.nvim'
}

require("lazy").setup(plugins, {})
