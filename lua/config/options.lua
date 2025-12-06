local opt = vim.opt
local cmd = vim.cmd
opt.clipboard = 'unnamedplus' -- Sync with system clipboard
opt.confirm = true
opt.cursorline = false-- Enable highlighting of the current line
opt.list = false -- Show some invisible characters (tabs...
opt.number = true -- Print line number
opt.shiftwidth = 4 -- Size of an indent
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.undofile = true
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.expandtab = true -- Use spaces tinstead of tabs
vim.o.background = "light"
cmd.language "en_US"


