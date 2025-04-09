return {
  -- Autopairs
  {
    "windwp/nvim-autopairs"
  },

  -- bufferline
  {
    'akinsho/bufferline.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
  },

  -- Colorscheme
  {
    "sainnhe/everforest",
    enabled = false
  },
  {
    "folke/tokyonight.nvim"
  },
  {
    "maxmx03/solarized.nvim",
    enabled = false
  },
  {
    "catppuccin/nvim",
    enabled = false
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = false
  },
  {
    "ellisonleao/gruvbox.nvim",
    enabled = false
  },
  {
    "rose-pine/neovim",
    enabled = false
  },
  {
    "cocopon/iceberg.vim",
    enabled = false
  },
  {
    "dracula/vim",
    enabled = false
  },

  --Hop (Better Navigation)
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
    },
    enabled = false
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
  },
  -- Language Support
  -- Added this plugin.
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    },
    enabled = true,
  },


  -- Nvimtree (File Explorer)
  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    enabled = false
  },

  -- Toggle Term
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
  },

  -- Which-key
  {
    'folke/which-key.nvim',
    lazy = true,
  },

}
