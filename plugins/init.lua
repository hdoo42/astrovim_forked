return {
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function() require("nordic").load() end,
  },
  { "windwp/nvim-ts-autotag" },
  {
    "lukas-reineke/lsp-format.nvim",
    config = function()
      require("lsp-format").setup {}
      local on_attach = function(client) require("lsp-format").on_attach(client) end
      require("lspconfig").gopls.setup { on_attach = on_attach }
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
    end,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    config = function()
      vim.g.VM_leader = { default = "space", visual = "space" }
      vim.g.VM_Mono_hl = "Visual"
      vim.g.VM_Extend_hl = "Visual"
      vim.g.VM_Cursor_hl = "Visual"
      vim.g.VM_Insert_hl = "Visual"
    end,
  },
  {
    "nvim-neorg/neorg",
    -- event = "VeryLazy",
    lazy = false,
    build = ":Neorg sync-parsers",
    dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" } },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.integrations.telescope"] = {},
          ["core.integrations.treesitter"] = {},
          ["core.integrations.nvim-cmp"] = {},
          ["core.highlights"] = {
            config = {
              highlights = {
                links = {
                  file = "+@text.uri",
                },
                definitions = {
                  content = "+text",
                },
              },
            },
          },
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              default_workspace = "notes",
              workspaces = {
                notes = "~/.config/notes",
              },
            },
          },
        },
      }
    end,
  },
}
