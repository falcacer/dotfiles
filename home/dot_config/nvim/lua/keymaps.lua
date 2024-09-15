vim.g.mapleader = " " -- set leader to space
local keymap = vim.keymap -- for conciseness

--windows management
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "close the current file" })
keymap.set("n", "<leader>o", "<cmd>tabnew<CR>", { desc = "creates a new tab" })
keymap.set("n", "<C-n>", "<cmd>tabn<CR>", { desc = "goes to next tab" })
keymap.set("n", "<C-p>", "<cmd>tabp<CR>", { desc = "goes to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current file in a new tab" })
