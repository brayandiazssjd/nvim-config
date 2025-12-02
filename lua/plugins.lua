return {
  -- Autopairs
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        underline = true,
        severity_sort = false,
        float = true,
      })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    enabled = true,
    config = true,
  },

  -- bufferline
  {
    'akinsho/bufferline.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
  },

  -- Blink
  {
    "saghen/blink.cmp",
    dependencies = { "L3MON4D3/LuaSnip" },
    opts = {
      snippets = {
        preset = "luasnip",
      },
      keymap = {
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<CR>'] = { 'select_and_accept', 'fallback' },
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
        ['<Tab>'] = { 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
        ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
        ['<Esc>'] = { 'cancel', 'fallback' },
      },
      completion = {
        accept = {
          auto_brackets = {
            enabled = true,
          },
        },
      },
    },
    version = '1.*',
    config = function(_, opts)
      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities()
      })
      require("blink.cmp").setup(opts)
    end,
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
  },

  -- Mason
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
    end,
  },
  -- Language Support
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    config = function()
      require("mason-lspconfig").setup()
    end,
  },
  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  }, 
  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = "v0.2.0",
    dependencies = { 'nvim-lua/plenary.nvim' },
    enabled = true
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    'folke/which-key.nvim',
    lazy = true,
  },
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
}
