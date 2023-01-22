return {
  { "42Paris/42header" },
  { "eandrju/cellular-automaton.nvim" },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      plugin.default_config(opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
    end,
  },
}
