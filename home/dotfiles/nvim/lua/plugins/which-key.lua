return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeoutlen = 500
    vim.o.timeout = true
  end,
  opts = {},
}
