-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Lazygit fullscreen (override default floating window)
vim.keymap.set("n", "<leader>gg", function()
  Snacks.lazygit({ win = { width = 0, height = 0 } })
end, { desc = "Lazygit (cwd, fullscreen)" })

-- Center cursor when scrolling and jumping between search matches
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search (centered)" })
