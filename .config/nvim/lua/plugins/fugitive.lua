return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<C-k>", vim.cmd.Git);
    end
}

