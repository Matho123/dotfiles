vim.hl = vim.highlight -- workaround to make :Inspect work with nvim version 0.10.3, can be removed when fixed

vim.opt.number = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.cursorline = true
vim.opt.guicursor = "n-v-c-sm:block-blinkwait500-blinkon250-blinkoff150,i-ci-ve:ver50-blinkwait500-blinkon250-blinkoff150,r-cr:hor20,o:hor50"

vim.opt.showmode = true
vim.opt.laststatus = 3

vim.api.nvim_create_autocmd({ "DiagnosticChanged", "VimEnter" }, {
    callback = function()
        vim.opt.statusline = "%t %m %{v:lua.GetDiagnostics()} %= %r %l:%c %{v:lua.GetLinePercentage()}"
    end
})

function GetLinePercentage()
    local currentline = vim.fn.line(".")
    if currentline == 1 then
        return "Top"
    end

    local lastline = vim.fn.line("$")
    local linepercentage = currentline / lastline * 100
    if currentline == lastline or linepercentage > 99 then
        return "Bot"
    end

    return string.format("%.0f", linepercentage) .. "%"
end

function GetDiagnostics()
    local diagnostics = { }

    local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
    local infos = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

    if errors > 0 then
        table.insert(diagnostics, string.format("E:%d", errors))
    end

    if warnings > 0 then
        table.insert(diagnostics, string.format("W:%d", warnings))
    end

    if hints > 0 then
        table.insert(diagnostics, string.format("H:%d", hints))
    end

    if infos > 0 then
        table.insert(diagnostics, string.format("H:%d", infos))
    end

    return table.concat(diagnostics, " ")
end
