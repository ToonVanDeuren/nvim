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

-- Paste: reindent linewise pastes to match the current line (]p / [p),
-- leave charwise/blockwise pastes as normal p / P. Preserves the used register.
local function smart_paste(after)
  return function()
    local reg = vim.v.register
    local prefix = '"' .. reg
    if vim.fn.getregtype(reg) == "V" then
      return prefix .. (after and "]p" or "[p")
    end
    return prefix .. (after and "p" or "P")
  end
end
vim.keymap.set("n", "p", smart_paste(true), { expr = true, desc = "Paste (reindent if linewise)" })
vim.keymap.set("n", "P", smart_paste(false), { expr = true, desc = "Paste above (reindent if linewise)" })
