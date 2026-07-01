return {
  -- Go template parser for embedded Crossplane go-templating blocks.
  -- The YAML -> gotmpl injection lives in
  -- after/queries/yaml/injections.scm; the gotmpl parser in turn injects
  -- yaml back into its literal text, giving nested gotmpl -> yaml highlighting.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "gotmpl" } },
  },
}
