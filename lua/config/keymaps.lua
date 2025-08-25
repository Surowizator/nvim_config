local opts = { noremap = true, silent = true }

vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Opening side-buffers
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>t", ":terminal<CR>", opts)

-- Indenting
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("v", "<", "<gv", opts)

-- Move text up and down
vim.keymap.set("v", "J", ":move '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":move '>-2<CR>gv=gv", opts)
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv", opts)

-- ThePrimagen remaps
vim.keymap.set("n", "J", "mzJ`z", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)
vim.keymap.set("x", "<leader>p", "\"_dP", opts)
vim.keymap.set("n", "<leader>y", "\"+y", opts)
vim.keymap.set("v", "<leader>y", "\"+y", opts)
vim.keymap.set("n", "<leader>Y", "\"+Y", opts)
vim.keymap.set("n", "<leader>d", "\"_d", opts)
vim.keymap.set("v", "<leader>d", "\"_d", opts)

-- Telescope
-- more in Telescope's settings
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
vim.keymap.set("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Spelling
vim.keymap.set("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", opts)

-- Inkscape
vim.cmd([[
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
]])

-- Undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR><c-w>h", opts)

-- Harpoon
-- in harpoon.lua because harpoon cannot be required twice

-- LSP
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "K", function() vim.lsp.buf.hover({border = "rounded"}) end)
vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help({border = "rounded"}) end)
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>')
vim.keymap.set("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>')

-- DAP
local dap = require("dap")
vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F6>', function() dap.terminate() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function() require('dap.ui.widgets').hover() end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function() require('dap.ui.widgets').preview() end)
vim.keymap.set('n', '<Leader>df', function() local widgets = require('dap.ui.widgets') widgets.centered_float(widgets.frames) end)
vim.keymap.set('n', '<Leader>ds', function() local widgets = require('dap.ui.widgets') widgets.centered_float(widgets.scopes) end)
