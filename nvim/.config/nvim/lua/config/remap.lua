local vim = vim

vim.g.mapleader = " "
vim.keymap.set("n", "E", "$")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")     -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")     -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- formatting
vim.keymap.set("n", "<C-A-l>", function()
    vim.lsp.buf.format { async = false }
end, { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- navigation
vim.keymap.set("n", "<A-e>", "<cmd>lua vim.diagnostic.jump({count=-1})<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-r>", "<cmd>lua vim.diagnostic.jump({count=1})<CR>", { noremap = true, silent = true })
