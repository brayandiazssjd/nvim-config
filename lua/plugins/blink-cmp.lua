return {
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
}
