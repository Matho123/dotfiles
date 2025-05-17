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

-- show dots for whitespaces between characters as well as for leading and trailing spaces
vim.opt.listchars = { space = "·", trail = "·" ,lead = "·" }
vim.opt.list = false


vim.api.nvim_create_autocmd({ "DiagnosticChanged", "VimEnter" }, {
    callback = function()
        vim.opt.statusline = GetDiagnostics()
    end
})

function GetDiagnostics()
    local statusline = "%f %m"

    local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
    local infos = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

    if errors or warnings or hints or infos then
        statusline = statusline .. " "
    end

    if errors > 0 then
        statusline = statusline .. "%#ErrorMsg#" .. string.format("E:%d ", errors)
    end

    if warnings > 0 then
        statusline = statusline .. "%#WarningMsg#" .. string.format("W:%d ", warnings)
    end

    if hints > 0 then
        statusline = statusline .. "%#StatusLine#" .. string.format("H:%d ", hints)
    end

    if infos > 0 then
        statusline = statusline .. "%#StatusLine#" .. string.format("I:%d ", infos)
    end

    return statusline .. "%#StatusLine#%= %r %l:%c %{v:lua.GetLinePercentage()}"
end

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

