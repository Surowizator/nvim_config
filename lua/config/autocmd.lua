-- syntax highlighting with Treesitter
vim.api.nvim_create_autocmd('FileType', {
    pattern = "*.*", -- disable for special filetypes, eg. Lazy, NvimTree
    callback = function()
        if vim.bo.filetype=="tex" then -- VimTeX takes over
            return
        end
        vim.treesitter.start()
    end,
})

-- load render-markdown with delay because it loads cmp
vim.api.nvim_create_autocmd('FileType', {
    pattern = "markdown",
    callback = function()
        vim.defer_fn(function ()
            require("render-markdown")
        end,100)
    end,
})
