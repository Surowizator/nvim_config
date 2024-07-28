local colorscheme = "tokyonight-night"

---@diagnostic disable-next-line
local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status then
    vim.notify("Couldn't load the colorscheme.")
    return
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
