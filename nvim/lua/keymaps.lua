vim.g.mapleader = " " -- set leader to space
local keymap = vim.keymap -- for conciseness

--windows management
keymap.set("n", "<leader>sm", "<C-w>w", { desc = "moves between split scripts" }) -- moves between split scripts 
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" }) -- close current split

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "creates a new tab" }) -- creates a new tab 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close the current tab" }) -- close the current tab 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "goes to next tab" }) -- goes to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "goes to previous tab" }) -- goes to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current file in a new tab" }) -- open current file in a new tab

