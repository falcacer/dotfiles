return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "search files with that word" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "find recent files" })
      vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "find string in file" })
      vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "open current buffers" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local themes = require("telescope.themes")
      telescope.setup({
        defaults = {
          path_display = { "smart" },
          mapping = {
            i = {
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
        extensions = {
          ["ui-select"] = {
            themes.get_dropdown({}),
          },
        },
      })
      telescope.load_extension("ui-select")
      telescope.load_extension("remote-sshfs")
    end,
  },
}