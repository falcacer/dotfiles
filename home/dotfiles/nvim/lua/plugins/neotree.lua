return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle left<CR>', {desc = "toogle neotree"})
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
        },
        follow_current_file = true, -- Add this line to follow the current file
      },
      close_if_last_window = true,
      window = {
        width = 20,
        side = "left",
        auto_resize = true,
      },
    })
  end
}
