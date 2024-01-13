---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window up" },

    ["J"] = { "5j", "Go down 5 lines" },
    ["K"] = { "5k", "Go up 5 lines" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.lspconfig = {
  n = {
    ["zk"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
  },
}

-- more keybinds!

return M
