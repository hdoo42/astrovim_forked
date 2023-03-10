return {
  { "42Paris/42header", lazy = false },
  { "github/copilot.vim", lazy = false },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
    end,
  },
  {
    "giusgad/pets.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
    config = function()
      require("pets").setup {
        row = 6,
        default_pet = "dog",
      }
    end,
  },
}
