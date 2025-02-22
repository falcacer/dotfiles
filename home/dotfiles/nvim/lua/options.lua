-- General settings
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard:append("unnamedplus") -- use system clipboard (for Linux)
-- vim.opt.clipboard:append("unnamed") -- use system clipboard (for mac)

-- Tabs and indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

-- Netrw settings
vim.g.netrw_liststyle = 3

-- Diagnostic settings
vim.diagnostic.config({ virtual_text = false })

-- Additional settings
vim.opt.wrap = false -- Disable line wrapping
vim.opt.swapfile = false -- Disable swap file
vim.opt.backup = false -- Disable backup file
vim.opt.undofile = true -- Enable persistent undo
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Incremental search
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override ignorecase if search pattern contains uppercase letters
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.splitright = true -- Vertical split to the right
vim.opt.splitbelow = true -- Horizontal split to the bottom
vim.opt.scrolloff = 8 -- Minimum number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 -- Minimum number of screen columns to keep to the left and right of the cursor

