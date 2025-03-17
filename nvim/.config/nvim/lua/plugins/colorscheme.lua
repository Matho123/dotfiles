return {
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        priority = 1000,
    },
    {
        "morhetz/gruvbox"
    },
    {
        dir = "/home/matho/workspaces/matho-color",
        config = function ()
            vim.cmd.colorscheme('matho-color')
        end
    }
}
