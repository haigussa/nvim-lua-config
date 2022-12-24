local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

vim.g.mapleader = " "
map("n", "<leader>ft", vim.cmd.Ex)
map("i", "fd", "<ESC>")


-- move oneline up or down, like in vs code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y

-- move between splits
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wo", "<C-w>o")


-- move splits
vim.keymap.set("n", "<leader>wH", "<C-w>H")
vim.keymap.set("n", "<leader>wL", "<C-w>L")
vim.keymap.set("n", "<leader>wJ", "<C-w>J")
vim.keymap.set("n", "<leader>wK", "<C-w>K")

vim.keymap.set("n", "<leader>fc", ":lua vim.lsp.buf.format()<CR>")


vim.keymap.set("n", "<leader>h", ":sb<CR>") -- split below
vim.keymap.set("n", "<leader>v", ":vsp<CR>") -- split right

vim.keymap.set('t', 'fd', [[<C-\><C-n>]]) -- esc in terminal
vim.keymap.set("n", "<leader>fs", ":w<CR>") -- split below
vim.keymap.set("n", "<leader>q", ":q<CR>") -- split below
