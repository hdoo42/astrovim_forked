local utils = require "user.utils"
local astro_utils = require "astronvim.utils"
local mappings

mappings = {
  n = {
    -- disable default bindings
    ["<C-Down>"] = false,
    ["<C-Left>"] = false,
    ["<C-Right>"] = false,
    ["<C-Up>"] = false,
    ["<C-q>"] = false,
    ["<M-s>"] = { "<Plug>(leap-forward-to)", desc = "easy jump" },
    ["<M-S>"] = { "<Plug>(leap-backward-to)", desc = "easy jump" },
    ["q:"] = ":",
    ["Y"] = { '"*y', desc = "yank with clipboad" },

    ["<leader>N"] = { "<cmd>tabnew<cr>", desc = "New Tab" },
    ["<leader><cr>"] = { '<esc>/<++><cr>"_c4l', desc = "Next Template" },
    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },
    ["<leader>pa"] = { function() require("lazy").update { show = false } end, desc = "update sliently" },

    -- VM
    ["<C-k>"] = { "<Plug>(VM-Add-Cursor-Up)", desc = "Add cursor Upward" },
    ["<C-j>"] = { "<Plug>(VM-Add-Cursor-Down)", desc = "Add cursor Downward" },

    -- better buffer navigation
    ["]b"] = false,
    ["[b"] = false,
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- better search
    n = { utils.better_search "n", desc = "Next search" },
    N = { utils.better_search "N", desc = "Previous search" },

    -- resize with arrows
    ["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },

    -- Easy-Align
    ga = { "<Plug>(EasyAlign)", desc = "Easy Align" },

    -- buffer controls
    ["<leader>w"] = { "<cmd>wa<cr> <cmd>w<cr>", desc = "Save all buffers" },
    ["<leader>q"] = { "<cmd>qa<cr>", desc = "Quit all buffers" },

    -- vim-sandwich
    ["s"] = "<Nop>",

    ["<leader>Z"] = {
      function()
        local fullPath = vim.fn.expand "%:p"
        if type(fullPath) == "table" then fullPath = table.concat(fullPath, "") end
        local pdfFile = string.gsub(fullPath, "%.tex", "%.pdf")
        print(pdfFile)
        vim.fn.system("zathura '" .. pdfFile .. "' &")
      end,
      desc = "open Zathura",
    },

    -- neogen
    ["<leader>a"] = { desc = "󰏫 Annotate" },
    ["<leader>a<cr>"] = { function() require("neogen").generate {} end, desc = "Current" },
    ["<leader>ac"] = { function() require("neogen").generate { type = "class" } end, desc = "Class" },
    ["<leader>af"] = { function() require("neogen").generate { type = "func" } end, desc = "Function" },
    ["<leader>at"] = { function() require("neogen").generate { type = "type" } end, desc = "Type" },
    ["<leader>aF"] = { function() require("neogen").generate { type = "file" } end, desc = "File" },

    -- telescope plugin mappings
    ["<leader>fx"] = {
      function() require("telescope").extensions.live_grep_args.live_grep_args() end,
      desc = "Find words (args)",
    },
    ["<leader>fB"] = { "<cmd>Telescope bibtex<cr>", desc = "Find BibTeX" },
    ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "File explorer" },
    ["<leader>fp"] = { function() require("telescope").extensions.projects.projects {} end, desc = "Find projects" },
    ["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODOs" },

    ["<leader>z"] = { "<cmd>ZenMode<cr>", desc = "Zen Mode" },

    ["<leader>x"] = { desc = "󰒡 Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },
  },

  v = {
    ["<leader>r"] = { "<Plug>Send", desc = "Send to REPL" },
  },

  i = {
    -- signature help, fails silently so attach always
    ["<C-l>"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
    ["<S-Tab>"] = { "<C-V><Tab>", desc = "Tab character" },
  },

  -- terminal mappings
  t = {
    ["<C-BS>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },

  x = {
    -- better increment/decrement
    ["+"] = { "g<C-a>", desc = "Increment number" },
    ["-"] = { "g<C-x>", desc = "Descrement number" },
    -- Easy-Align
    ga = { "<Plug>(EasyAlign)", desc = "Easy Align" },
  },

  o = {
    -- line text-objects
    ["il"] = { ":normal vil<cr>", desc = "Inside line text object" },
    ["al"] = { ":normal val<cr>", desc = "Around line text object" },
  },
}

return mappings
