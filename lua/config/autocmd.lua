-- syntax highlighting with Treesitter
vim.api.nvim_create_autocmd('FileType', {
    pattern = "*",
    callback = function()
        if vim.bo.filetype ~= "tex" then -- for tex VimTex should work
            vim.treesitter.start()
        end
    end,
})
