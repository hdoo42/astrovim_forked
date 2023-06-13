return {
  codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      command = "/Users/hdoo/.local/share/nvim/mason/bin/codelldb",
      args = { "--port", "${port}" },
    },
  },
}
