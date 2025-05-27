return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
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
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope grep string' })
    end
}
