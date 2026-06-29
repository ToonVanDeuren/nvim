-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.shell = "fish"
vim.opt.showtabline = 2

-- Detect KCL files
vim.filetype.add({ extension = { k = "kcl" } })
vim.opt.scrolloff = 9
