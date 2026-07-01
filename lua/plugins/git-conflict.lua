return {
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      default_mappings = true, -- co/ct/cb/c0 to choose, ]x/[x to navigate
      -- NOTE: do NOT enable disable_diagnostics on Neovim >= 0.11.
      -- The plugin calls vim.diagnostic.disable() (removed in 0.11+), which
      -- errors inside the GitConflictDetected handler and prevents the
      -- buffer-local co/ct/cb/c0 keymaps from ever being set.
    },
  },
}
