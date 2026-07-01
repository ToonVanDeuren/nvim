return {
  -- Diffview: side-by-side diffs + PR review file panel
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview: open" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview: file history" },
      { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diffview: close" },
    },
    opts = {},
  },

  -- Octo: GitHub PRs & issues inside Neovim (uses `gh` CLI)
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>gp", "<cmd>Octo pr list<cr>", desc = "Octo: list PRs" },
      { "<leader>gi", "<cmd>Octo issue list<cr>", desc = "Octo: list issues" },
      { "<leader>gr", "<cmd>Octo pr review start<cr>", desc = "Octo: start PR review" },
      { "<leader>gc", "<cmd>Octo pr create<cr>", desc = "Octo: create PR" },
    },
    opts = {
      use_local_fs = true,
      picker = "telescope",
    },
  },
}
