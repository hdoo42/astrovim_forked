return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "css-lsp",
        "html-lsp",
        "prettierd",
      },
      handlers = {
        taplo = function() end, -- disable taplo in null-ls, it's taken care of by lspconfig
        rome = function() end, -- disable rome in null-ls, it's taken care of by lspconfig
        prettierd = function()
          local null_ls = require "null-ls"
          null_ls.register(null_ls.builtins.formatting.prettierd.with {
            disabled_filetypes = {
              "javascript",
              "javascriptreact",
              "json",
              "typescript",
              "typescript.tsx",
              "typescriptreact",
            },
          })
        end,
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {},
    },
  },
}
