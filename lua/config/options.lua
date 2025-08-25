local options = {
    undofile = true, -- undos are saved to a file
    undodir = vim.env.HOME.."/.cache/nvim/undodir", -- this one

    number = true, -- number lines
    relativenumber = true, -- relative numbers

    -- Indentation
    smarttab = true,
    cindent = true, -- auto indent
    expandtab = true,
    shiftwidth = 4, -- number of spaces for indentation
    tabstop = 4, -- visual width of a tab

    -- Folding using Treesitter
    foldmethod = "expr",
    foldlevel = 99, --disable folding, lower #s enable
    foldexpr = "v:lua.vim.treesitter.foldexpr()",

    termguicolors = true,

    ignorecase = true, --ignore case while searching
    smartcase = true, --but do not ignore if caps are used
    hlsearch = false, -- stop highlighting search after searching

    conceallevel = 2, --markdown and tex conceal
    cursorline = true, -- highlight current line
    scrolloff = 8, -- min lines below/above cursor
    cmdheight = 2, -- bigger cmdline

    -- Spelling
    spell = true,
    spelllang = "pl,en_gb",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
