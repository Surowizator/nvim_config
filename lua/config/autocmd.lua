-- syntax highlighting with Treesitter
vim.api.nvim_create_autocmd('FileType', {
    pattern = "*",
    callback = function()
        local ft = vim.bo.filetype
        -- disable for special filetypes and TeX (VimTex takes over)
        if ft=="NvimTree" or
            ft=="TelescopePrompt" or ft=="TelescopeResults" or
            ft=="undotree" or
            ft=="tex" then
            return
        end
        vim.treesitter.start()
    end,
})
