return {
  -- Autopairs
  {
    "saghen/blink.pairs",
    version = "*",
    config = true,
    enabled = true,
    dependencies = { "saghen/blink.download" },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    enabled = false,
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

  -- Language Support
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    config = function()
      require("mason-lspconfig").setup()
    end,
  },
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
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
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
    "nvim-treesitter/nvim-treesitter",
  },
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    opts = {
      triggers = {
        { "<leader>", mode = "n" }
      },
      preset = "helix",
    },
    config = function (_, opts)
      local wk = require("which-key")

      local mappings = {
        { "<leader>f", group = "file" }, -- group
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc="Find File", mode="n" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc="Buffers", mode="n" },
        { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc="Live grep", mode="n" },
        { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc="Grep string", mode="n" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc="Help tags", mode="n" },
        { "<leader>fq", "<cmd>Telescope quickfix<cr>", desc="Quick fix", mode="n" },
        { "<leader>fy", "<cmd>Telescope lsp_document_symbols<cr>", desc="Doc symbols", mode="n" },
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Exprorer" },
        { "<leader>f1", hidden = true }, -- hide this keymap
        { "<leader>d", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Diagnostic"},
        {
          -- Nested mappings are allowed and can be added in any order
          -- Most attributes can be inherited or overridden on any level
          -- There's no limit to the depth of nesting
          mode = { "n", "v" }, -- NORMAL and VISUAL mode
          { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
          { "<leader>w", "<cmd>w<cr>", desc = "Write" },
        }
      }

      wk.setup(opts)
      wk.add(mappings)
    end,
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
