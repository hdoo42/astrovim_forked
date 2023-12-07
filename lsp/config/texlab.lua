return {
  settings = {
    texlab = {
      build = {
        onSave = true,
        executable = "lualatex",
      },
      forwardSearch = { executable = "zathura", args = { "--synctex-forward", "%l:1:%f", "%p" } },
    },
  },
}
