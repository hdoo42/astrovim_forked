return {
  { "42Paris/42header", lazy = false },
  { "eandrju/cellular-automaton.nvim" },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
    end,
  },
  {
    "hardyrafael17/norminette42.nvim",
    lazy = false,
    config = function()
      require("norminette").setup {
        runOnSave = true, -- Check for errors after save
        maxErrorsToShow = 5, -- Only show 5 errors
        active = true, -- Optional, can be set to false to deactivate plugin
      }
    end,
  },
}
