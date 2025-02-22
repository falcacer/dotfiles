vim.g.mapleader = " " -- set leader to space
local keymap = vim.keymap -- for conciseness

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })

keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "close the current file" })
keymap.set("n", "<leader>o", "<cmd>tabnew<CR>", { desc = "creates a new tab" })

keymap.set("n", "<leader>bl", ":ls<CR>", { desc = "List all buffers" })
keymap.set("n", "<leader>bb", ":buffer ", { desc = "Switch to buffer by number" })


vim.g.mapleader = " " -- set leader to space
local keymap = vim.keymap -- for conciseness

-- Window management
keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]], { desc = "Increase window width" })
keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]], { desc = "Decrease window width" })
keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]], { desc = "Increase window height" })
keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]], { desc = "Decrease window height" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split window" })

-- Buffer management
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete current buffer" })

-- Find word in file
keymap.set("n", "<leader>fw", "/", { desc = "Find word in file" })
keymap.set("n", "<leader>fh", ":%s///gc<Left><Left><Left><Left>", { desc = "Search and replace with confirmation" })
keymap.set("n", "<leader>fha", ":%s///g<Left><Left><Left>", { desc = "Search and replace all occurrences" })

-- Quick save and quit
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save current file" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit Neovim" })
keymap.set("n", "<leader>wq", "<cmd>wq<CR>", { desc = "Save and quit" })
