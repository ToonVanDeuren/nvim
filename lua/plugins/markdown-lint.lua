return {
  -- Apply a global markdownlint config to every markdown file, regardless of
  -- the project/cwd. nvim-lint runs markdownlint-cli2 over stdin, which only
  -- discovers config in the exact cwd, so we point it at an absolute config
  -- file to make the setting truly global.
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          prepend_args = {
            "--config",
            vim.fn.expand("~/.config/nvim/markdownlint-global.jsonc"),
          },
        },
      },
    },
  },
}
