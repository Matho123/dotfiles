require('telescope').setup({
    defaults = {
        path_display = { "truncate" },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
    },
})

local builtin = require('telescope.builtin')  

vim.keymap.set("n", "<C-k>", vim.cmd.Git);
vim.keymap.set('n', '<leader>t', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fs', builtin.grep_string)
