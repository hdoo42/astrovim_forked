return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "css-lsp",
        "rome",
        "html-lsp",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "stylelint",
      },
      handlers = {
        taplo = function() end, -- disable taplo in null-ls, it's taken care of by lspconfig
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
