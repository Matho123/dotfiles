local treesitter = require("nvim-treesitter")
treesitter.setup()
treesitter.install { "lua", "c", "cpp", "zig", "c3" }

vim.api.nvim_create_autocmd('FileType', {
    pattern = { "lua", "c", "cpp", "zig", "c3" },
    callback = function()
        vim.treesitter.start()
        -- vim.wo.foldexpr ='v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'
        -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
})

require("treesitter-autoinstall").setup({
    -- A list of *treesitter languages* to ignore.
    ignore = {},
    -- Auto-enable highlighting for installed languages.
    highlight = true,
    -- A list of *treesitter languages* to also enable regex highlighting for
    regex = {},
})
