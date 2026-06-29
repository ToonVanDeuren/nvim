return {
  -- Treesitter parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "kcl" } },
  },

  -- LSP (uses kcl-language-server from mason/PATH)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kcl = {
          mason = false,
          root_markers = { "kcl.mod", ".git" },
        },
        -- F# server can't be installed via Mason; don't auto-install
        fsautocomplete = { mason = false },
      },
    },
  },
}
