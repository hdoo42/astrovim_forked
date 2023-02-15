return {
  opt = {
    conceallevel = 2, -- enable conceal
    linebreak = true, -- linebreak soft wrap at words
    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    showtabline = 0,
    spellfile = vim.fn.expand "~/.config/nvim/lua/user/spell/en.utf-8.add",
    swapfile = false,
    thesaurus = vim.fn.expand "~/.config/nvim/lua/user/spell/mthesaur.txt",
    wrap = true, -- soft wrap lines
  },
}
