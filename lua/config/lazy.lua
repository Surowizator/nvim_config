-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)


-- Setup lazy.nvim
require("lazy").setup({
    "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
    "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
    'ThePrimeagen/vim-be-good',
    -- Colorschemes
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    "HiPhish/rainbow-delimiters.nvim",
    "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
    "numToStr/Comment.nvim", -- Easily comment stuff
    "JoosepAlviste/nvim-ts-context-commentstring",
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-tree/nvim-tree.lua",
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Completion
    "hrsh7th/nvim-cmp", -- The completion plugin
    "hrsh7th/cmp-buffer", -- buffer completions
    "hrsh7th/cmp-path", -- path completions
    "hrsh7th/cmp-cmdline", -- cmdline completions
    "honza/vim-snippets",
    'SirVer/ultisnips',
    'quangnguyen30192/cmp-nvim-ultisnips',
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",

    -- LSP
    "neovim/nvim-lspconfig", -- enable LSP
    "williamboman/mason.nvim", -- simple to use language server installer
    "williamboman/mason-lspconfig.nvim", -- simple to use language server installer

    -- VimTeX
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
    },

    -- DAP
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    "jay-babu/mason-nvim-dap.nvim",

    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
