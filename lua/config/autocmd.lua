-- syntax highlighting with Treesitter
vim.api.nvim_create_autocmd('FileType', {
    pattern = "*.*", -- disable for special filetypes, eg. Lazy, NvimTree
    callback = function()
        if vim.vo.filetype=="tex" then -- VimTeX takes over
            return
        end
        vim.treesitter.start()
    end,
})
