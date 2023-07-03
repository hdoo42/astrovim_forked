return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "andymass/vim-matchup", init = function() vim.g.matchup_matchparen_deferred = 1 end },
    { "HiPhish/nvim-ts-rainbow2" },
  },
  opts = {
    auto_install = vim.fn.executable "tree-sitter" == 1,
    ensure_installed = { "html", "css", "javascript", "typescript", "norg" },
    highlight = { disable = { "help" } },
    matchup = { enable = true },
    rainbow = { enable = true },
  },
}
