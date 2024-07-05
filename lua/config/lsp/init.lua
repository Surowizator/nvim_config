local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Couldn't load the LSP")
  return
end


require("config.lsp.mason")
require("config.lsp.handlers").setup()
