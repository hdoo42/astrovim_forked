return {
  n = {
    ["<leader>ll"] = {
      function() vim.lsp.codelens.run() end,
      desc = "LSP CodeLens run",
    },
    ["<leader>lL"] = {
      function() vim.lsp.codelens.refresh() end,
      desc = "LSP CodeLens refresh",
    },
  },
}
