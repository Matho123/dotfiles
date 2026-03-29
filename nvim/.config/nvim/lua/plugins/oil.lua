return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function()
        require("oil").setup({
            columns = {
                --"icon",
                --"permissions",
                --"size",
                --"mtime",
            },
            view_options = {
                show_hidden = true,
            }
        })
        vim.api.nvim_set_hl(0, "OilDirHidden", { link = "OilDir" })
        vim.api.nvim_set_hl(0, "OilFileHidden", { link = "OilFile" })
        vim.api.nvim_set_hl(0, "OilEmpty", { link = "OilFile" })
    end
}
