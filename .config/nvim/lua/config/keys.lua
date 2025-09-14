vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

map("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Buffer navigation with Caps H / L
vim.keymap.set("n", "H", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "L", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Close buffer (optional)
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close Buffer" })

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
