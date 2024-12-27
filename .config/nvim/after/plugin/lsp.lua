local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_server_config({
  on_init = function(client)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {
        'html',
        'cssls',
        'tailwindcss',
        'ts_ls',
        'eslint',
        'lua_ls',
        'java_language_server',
        'kotlin_language_server',
        'rust_analyzer',
        'gopls'
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

local cmp = require('cmp')
local cmp_select = {behaviour = cmp.SelectBehavior.Select}
local cmp_mapping = lsp_zero.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Enter>'] = cmp.mapping.complete(),
})
