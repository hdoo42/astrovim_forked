return {
  { "42Paris/42header", lazy = false },
  { "eandrju/cellular-automaton.nvim" },
  { "github/copilot.vim", lazy = false },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
    end,
  },
}
