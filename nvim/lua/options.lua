require("nvchad.options")

local o = vim.opt

-- Buffer
o.number = true -- Show line numbers
o.relativenumber = true -- Make line numbers relative
o.wrap = false -- Disable line wrapping
o.showmode = false -- Don't show mode (already in statusline)
o.signcolumn = "yes" -- Always show sign column, even when empty
o.list = true -- Identify whitespace characters
o.scrolloff = 10 -- Minimum visible lines above and below cursor
o.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- Identifiers
o.fillchars = { eob = " " } -- Remove tildes on empty lines
o.expandtab = true
o.tabstop = 4 -- Convert tab to 4 spaces
o.shiftwidth = 4 -- Number of spaces for each step of auto-indent
o.softtabstop = 4
o.virtualedit = "block" -- Enable virtualedit in block mode

o.splitbelow = true
o.splitright = true

o.inccommand = "split"

o.termguicolors = true

-- Clipboard and history
o.clipboard = "unnamedplus" -- Sync OS and Neovim clipboards
o.undofile = true -- Save undo history

-- Search
o.hlsearch = true -- Highlight on search
o.ignorecase = true -- Case-insensitive search
o.smartcase = true -- Case-insensitive if \C or capital latters
