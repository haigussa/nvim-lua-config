local cmd = vim.cmd
local api = vim.api

function ColorMyPencils(color)
    -- color = color or "rose-pine"
    color = color or "onedark"
    -- color = color or "gruvbox"
    cmd.colorscheme(color)
    -- vim.o.background = "light"

    api.nvim_set_hl(0, "Normal", { bg = "none" })
    api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
