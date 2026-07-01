-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Use the same light-blue folder color for both GitHub themes
local folder_color = "#74c1ff"
-- Slightly darker tint used only for hidden item names in the light theme
local light_hidden_color = "#4a9ae0"

local function set_neotree_colors(hidden_color)
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = folder_color, bg = nil })
  vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = hidden_color, bg = nil })
  vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = hidden_color, bg = nil })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = { "github_light_default", "github_dark_default" },
  callback = function(args)
    local hidden_color = args.match == "github_light_default" and light_hidden_color or folder_color
    set_neotree_colors(hidden_color)
  end,
})

set_neotree_colors(vim.g.colors_name == "github_light_default" and light_hidden_color or folder_color)
