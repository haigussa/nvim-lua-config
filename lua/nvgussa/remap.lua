local function map(m, k, v, opts)
    vim.keymap.set(m, k, v, opts)
end
local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
-- map("n", "<leader>ft", cmd.Ex) --launch explorer
-- map("n", "<leader>ft", ":Ex <CR> :vert res 35 <CR>") --launch explorer
-- map("n", "<leader>br", ":vert res 35 <CR>") -- resize juffer
map("n", "<leader>ft", ":NvimTreeToggle<CR>") --launch explorer
map("i", "fd", "<ESC>")


-- move oneline up or down, like in vs code
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map({ "n", "v" }, "<leader>y", [["+y]])
-- map("n", "<leader>Y", [["+Y

-- move between splits
map("n", "<leader>wh", "<C-w>h")
map("n", "<leader>wl", "<C-w>l")
map("n", "<leader>wj", "<C-w>j")
map("n", "<leader>wk", "<C-w>k")
map("n", "<leader>wo", "<C-w>o")


-- move splits
map("n", "<leader>wH", "<C-w>H")
map("n", "<leader>wL", "<C-w>L")
map("n", "<leader>wJ", "<C-w>J")
map("n", "<leader>wK", "<C-w>K")

-- format code
map("n", "<leader>fc", ":lua vim.lsp.buf.format()<CR>")


--splits
map("n", "<leader>h", cmd.sp, {desc = '[h] Split window horizontally' }) -- split below
map("n", "<leader>v", cmd.vsp, {desc = '[v] Split window vertically' }) -- split right
map("n", "<leader>w=", "<C-w>=", {desc = '[w=] Set split size equal' } ) -- split right

-- quit and save
map("n", "<leader>fs", cmd.w)

-- map("n", "<leader>q", ":q<CR>")
map("n", "<leader>q", cmd.q)

-- terminal
map('t', 'fd', [[<C-\><C-n>]]) -- esc in terminal

--buffers
map("n", "<leader>bd", cmd.bd, {desc = '[bd] Delete current buffer'})
map("n", "<leader>bn", cmd.bn, {desc = '[bn] Go to next buffer'})
map("n", "<leader>bp", cmd.bp, {desc = '[bp] Go to previous buffer'})
