local wk = require("which-key")

local mappings = {
  { "<leader>f", group = "file" }, -- group
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Exprorer" },
  { "<leader>t", group = "Term" },
  { "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", desc = "Horizontal"},
  { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Default" },
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

local setup = {
  triggers = {
    { "<leader>", mode = "n" }
  }
}

wk.setup(setup)
wk.add(mappings)
