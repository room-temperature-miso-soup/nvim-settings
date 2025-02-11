return {
  -- disable trouble
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {},
    },
  },
  {
    "blink.cmp",

    compat = {
      "avante_commands",
      "avante_mentions",
      "avante_files",
    },
    signature = { enabled = true },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({
        hints = {
          enabled = false, -- Disable gopls hints
        },
      })
    end,
  },
}
