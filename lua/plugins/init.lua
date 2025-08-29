-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
        "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
        {
            "folke/tokyonight.nvim", -- Colorscheme
            lazy = false,
            priority = 1000,
        },
        {
            "nvim-telescope/telescope.nvim", -- Fuzzy finder
            cmd = "Telescope",
            opts = require("plugins.telescope")
        },
        {
            "nvim-treesitter/nvim-treesitter", -- Language parsers
            branch = "main",
            lazy = false,
            build = ":TSUpdate",
        },
        {
            "HiPhish/rainbow-delimiters.nvim", -- Colourful brackets
            event = {"BufNewFile", "BufReadPre"},
        },
        {
            "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
            event = "InsertEnter",
            config = require("plugins.autopairs"),
        },
        {
            "numToStr/Comment.nvim", -- Easily comment stuff
            event = {"BufNewFile", "BufReadPre"},
            opts = {},
        },
        {
            "lewis6991/gitsigns.nvim", -- Git integration
            event = {"BufNewFile", "BufReadPre"},
            opts = require("plugins.gitsigns"),
        },
        "nvim-tree/nvim-web-devicons", -- Nice icons, do not load until something needs it
        {
            "nvim-tree/nvim-tree.lua", -- Directory tree
            cmd = "NvimTreeToggle",
            opts = require("plugins.nvimtree"),
        },
        {
            "ThePrimeagen/harpoon", -- Easy jumping through files
            branch = "harpoon2",
            event = {"BufNewFile", "BufReadPre"}, -- Harpoon loads with keymaps anyway
            config = require("plugins.harpoon"),
        },
        {
            "hrsh7th/nvim-cmp", -- The completion plugin
            dependencies = {
                "hrsh7th/cmp-buffer", -- buffer completions
                "hrsh7th/cmp-path", -- path completions
                "hrsh7th/cmp-cmdline", -- cmdline completions
                -- Some bridges
                'quangnguyen30192/cmp-nvim-ultisnips',
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-nvim-lua",
            },
            event = "InsertEnter",
            config = require("plugins.cmp"),
        },
        {
            'SirVer/ultisnips', -- Snippets engine
            event = "InsertEnter",
            init = require("plugins.ultisnips"),
        },
        {
            "williamboman/mason.nvim", -- simple to use language server installer
            cmd = "Mason",
            opts = require("plugins.mason"),
        },
        {
            "williamboman/mason-lspconfig.nvim", -- LSP utilising Mason
            dependencies = {
                "williamboman/mason.nvim",
                "neovim/nvim-lspconfig", -- enable LSP
            },
            event = {"BufNewFile", "BufReadPre"},
            config = require("plugins.lsp"),
        },
        {
            "lervag/vimtex", -- TeX plugin
            ft = "tex",
            init = require("plugins.vimtex"),
        },
        {
            "mbbill/undotree", -- Tree of changes
            cmd = "UndotreeToggle",
        },
        {
            "dstein64/vim-startuptime", -- Check startup time
            cmd = "StartupTime",
        },
        {
            "numToStr/FTerm.nvim", -- Floating terminal, keymap calls require
            opts = require("plugins.fterm"),
        },
        {
            "MeanderingProgrammer/render-markdown.nvim",
            ft = "markdown",
            opts = require("plugins.markdown"),
        },
        {
            "kylechui/nvim-surround",
            event = {"BufnewFile", "BufReadPre"},
            opts = {},
        },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
    defaults = {
        lazy = true,
    }
})
