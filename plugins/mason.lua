return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "marksman",
        "jsonls",
        "sumneko_lua",
        "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "shellcheck",
        "stylua",
        "black",
      },
    },
    config = function(plugin, opts)
      plugin.default_config(opts)
      local null_ls = require "null-ls"
      require("mason-null-ls").setup_handlers {
        prettierd = function()
          null_ls.register(
            null_ls.builtins.formatting.prettierd.with { extra_filetypes = { "markdown", "rmd", "qmd" } }
          )
        end,
      }
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "bash",
        "cppdbg",
      },
    },
  },
}
