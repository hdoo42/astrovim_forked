return {
  {
    "Wansmer/treesj",
    keys = {
      "<space>m",
      "J",
      "<space>s",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup {--[[ your config ]]
      }
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^3", -- Recommended
    ft = { "rust" },
  },
  { "ggandor/leap.nvim", lazy = false },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { "~/.config/nvim/lua/user/snippets" },
      }
    end,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    branch = "master",
    config = function()
      vim.g.VM_Mono_hl = "DiffText"
      vim.g.VM_Extend_hl = "DiffAdd"
      vim.g.VM_Cursor_hl = "Visual"
      vim.g.VM_Insert_hl = "DiffChange"
    end,
  },
}
