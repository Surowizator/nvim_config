return function ()
    require("mason-lspconfig").setup({
        ensure_installed = {
            "clangd",
            "lua_ls",
            "pyright",
            "jsonls",
            "eslint",
            "texlab",
        },
        automatic_installation = true,
    })

    vim.lsp.config("*", {
        capabilities = vim.lsp.protocol.make_client_capabilities()
    })

    vim.diagnostic.config({
        virtual_text = true,
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = "",
                [vim.diagnostic.severity.WARN] = "",
                [vim.diagnostic.severity.HINT] = "",
                [vim.diagnostic.severity.INFO] = "",
            }
        },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "if_many",
            header = "",
            prefix = "",
        },
    })
end
