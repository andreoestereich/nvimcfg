vim.keymap.set("n", "<leader>s", vim.cmd.write)
vim.keymap.set('n', '<leader>c', ':! compiler <c-r>%<CR>')

vim.keymap.set('n', '<leader>p', ':set invpaste<CR>')

vim.keymap.set('n', '<leader>t', '<cmd>TagbarToggle<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>NnnExplorer<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>NnnPicker<CR>')

-- Global lsp mappings.
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

require('remaps/lsp')
