local opts = { noremap = true, silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--nvim-tree
vim.keymap.set('n', '<leader><Tab>', vim.cmd.NvimTreeToggle)

--nvim-lsp
vim.keymap.set('n', '<leader>h',  '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<CR>')
vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('n', '<leader>i', '<cmd>lua vim.lsp.buf.implementation()<CR>')
vim.keymap.set('n', '<leader>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '<leader>]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', '<leader>[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--openingh
vim.api.nvim_set_keymap("n", "<Leader>gf", ":OpenInGHFile <CR>", { silent = true, noremap = true })

