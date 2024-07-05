local colorscheme = "tokyonight-night"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status then
    vim.notify("Couldn't load the colorscheme.")
end
