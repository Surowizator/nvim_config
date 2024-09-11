require("mason").setup({
	ui = {
		border = "none",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
    ensure_installed = {
        "clangd",
        "lua_ls",
        "pyright",
        "jsonls",
        "eslint",
        "cpptools",
    }})
