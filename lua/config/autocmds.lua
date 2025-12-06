-- Autocmds

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = { "xml", "html", "css", "javascript", "lua", "json", "typescript", "cpp", "c" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
autocmd("FileType", {
  pattern = { "nasm", "prolog" },
  callback = function()
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
  end,
})
