require("oil").setup({
    columns = {
        --"icon",
        "permissions",
        "size",
        "mtime",
    },
    view_options = {
        show_hidden = true,
    }
})

vim.api.nvim_set_hl(0, "OilDirHidden", { link = "OilDir" })
vim.api.nvim_set_hl(0, "OilFileHidden", { link = "OilFile" })
vim.api.nvim_set_hl(0, "OilEmpty", { link = "OilFile" })
