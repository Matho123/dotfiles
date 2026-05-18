-- ### set options ###
vim.opt.number = true
vim.opt.rnu = true
vim.opt.signcolumn = "yes:1"

vim.opt.swapfile = false
vim.opt.path = vim.opt.path + "src/**,.config/**"

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.laststatus = 3

vim.opt.syntax = "off"
vim.opt.scrolloff = 8

vim.opt.cursorline = true
vim.opt.guicursor = "n-v-c-sm:block-blinkwait500-blinkon250-blinkoff150,i-ci-ve:ver50-blinkwait500-blinkon250-blinkoff150,r-cr:hor20,o:hor50"

vim.opt.listchars = { space = "·", trail = "·" , lead = "·" } -- show dots for whitespaces between characters as well as for leading and trailing spaces
vim.opt.list = false

vim.opt.loadplugins = true
vim.opt.winborder = "single"


-- ### set key remaps and autocommands ###
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>") -- vim.cmd.Ex
vim.keymap.set("n", "-", "<CMD>Oil<CR>") -- vim.cmd.Ex
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-J>", ":m .+1<CR>==")      -- move line up(n)
vim.keymap.set("n", "<A-K>", ":m .-2<CR>==")      -- move line down(n)
vim.keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv")  -- move line up(v)
vim.keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv")  -- move line down(v)
vim.keymap.set("n", "<leader>yy", "\"+yy")        -- copy line to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")          -- copy highlighted text to system clipboard
vim.keymap.set("n", "<leader>P", "\"+P")          -- paste from clipboard
vim.keymap.set("n", "<leader>pp", "\"+p")         -- paste from clipboard
vim.keymap.set("v", "<leader>p", "\"+p")          -- replace highlighted text with clipboard contents

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", "<Esc>")

vim.keymap.set("n", "<A-e>", "<cmd>cprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-r>", "<cmd>cnext<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ll", ":set list!<CR>", { noremap = true, silent = true }) -- toggle whitespaces

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lc", "<cmd>silent lua vim.diagnostic.setqflist()<CR>")
vim.keymap.set("v", "<leader>=", "gq")
vim.keymap.set("i", "<C-a>", "<cmd>lua vim.lsp.omnifunc()<CR>")

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<CR>")

vim.keymap.set("n", "<leader>pf", "q:ifind ", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>pg", "q:isilent grep! ")
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
    pattern = "grep",
    callback = function()
        vim.cmd("copen")
    end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.cmd("silent! lua vim.hl.on_yank {higroup='Visual', timeout=175}")
    end,
})

-- ### add packages ###
vim.pack.add({
    -- coloschemes
    { src = "git@github.com:Matho123/matho.nvim.git" },
    { src = "https://github.com/dchinmay2/alabaster.nvim" },
    { src = "https://github.com/blazkowolf/gruber-darker.nvim" },

    -- treesitter
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
    { src = "https://github.com/mks-h/treesitter-autoinstall.nvim" },

    -- other
    { src = "https://github.com/nvim-lua/plenary.nvim" }, -- dependency for compile-mode
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    --{ src = "https://github.com/m00qek/baleia.nvim" }, -- dependency for comile-mode
    { src = "https://github.com/ej-shafran/compile-mode.nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/tpope/vim-fugitive" },
    { src = "https://github.com/mbbill/undotree" },
})

vim.cmd("colorscheme matho")
--vim.pack.del({"baleia"})

require("plugins.oil")
require("plugins.treesitter")
require("plugins.compile-mode")
require("plugins.telescope")

vim.lsp.enable('ts_ls')
