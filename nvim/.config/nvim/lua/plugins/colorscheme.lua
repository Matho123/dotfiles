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
        "vague2k/vague.nvim",
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
                -- optional configuration here
            })
        end
    },
    {
        "morhetz/gruvbox",
        priority = 1000,
    },
    {
        "p00f/alabaster.nvim",
        priority = 1000,
    },
    {
        dir = "~/workspaces/personal/matho.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme matho")
        end,
    }

}
