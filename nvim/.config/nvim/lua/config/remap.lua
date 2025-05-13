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
vim.keymap.set("n", "<leader>yy", "\"+yy")       -- copy line to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")         -- copy highlighted text to system clipboard
vim.keymap.set("n", "<leader>P", "\"+P")         -- paste from clipboard
vim.keymap.set("v", "<leader>p", "\"+p")         -- replace highlighted text with clipboard contents

-- formatting
vim.keymap.set("n", "<C-A-l>", function()
    vim.lsp.buf.format { async = false }
end, { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- navigation
vim.keymap.set("n", "<A-e>", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-r>", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
