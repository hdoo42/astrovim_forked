return {
  format_on_save = {
    enabled = false, -- enable format on save
    ignore_filetypes = { -- disable format on save for specified filetypes
      "c",
    },
  },
  disabled = {
    "lua_ls",
    "tsserver",
  },
}
