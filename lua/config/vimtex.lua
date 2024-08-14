vim.g.vimtex_view_method = "zathura"
vim.g.tex_flavor = "latex"
vim.g.quickfix_mode = 0
vim.o.conceallevel = 1
vim.g.tex_conceal = "abdmg"
vim.g.vimtex_view_forward_search_on_start = false
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = { options = {
    "-verbose",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
    "-pdf",
} }
