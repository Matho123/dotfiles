--updateFilterParams require('onedark').setup {
--     style = 'dark',
--     transparent = true,
--     term_colors = true,
--     colors = {
--         fg = '#AAAAAA',
--         light_grey = '#AAAAAA',
--         grey = '#777777',
--         error = "#CC0000",
--         warning = "#CCCC00",
--         hint = "#CC00CC"
--     },
--     highlights = {
--         DiagnosticError = {fg = "$error"},
--         DiagnosticUnderlineError = {sp = "$error"},
--         DiagnosticVirtualTextError = {fg = "$error", bg = "transparent"},
-- 
--         DiagnosticWarn = {fg = "$warning"},
--         DiagnosticUnderlineWarn = {sp = "$warning"},
--         DiagnosticVirtualTextWarn = {fg = "$warning", bg = "transparent"},
-- 
--         DiagnosticHint = {fg = "$hint"},
--         DiagnosticUnderlineHint = {sp = "$hint"},
--         DiagnosticVirtualTextHint = {fg = "$hint", bg = "transparent"},
-- 
--         WinBar = {fg = '#DDDDDD', bg = 'transparent'},
--         WinBarNC = {fg = 'grey', bg = 'transparent'},
--         CursorLineNr = {fg = '#FFFFFF', fmt = 'bold'},
--         LineNr = {fg = '#A0A0A0'},
--         Field = {fg = '$red'},
-- 
--         ['@annotation'] = {fg = '$yellow'},
--         ['@attribute'] = {fg = '$red'},
--         ['@attribute.typescript'] = {fg = '$red'},
--         ['@boolean'] = {fg = '$purple'},
--         ['@constructor'] = {fg = '$yellow', fmt = 'none'},
--         ['@constant.builtin'] = {fg = '$red', fmt = 'none'},
--         ['@field'] = {fg = '$red'},
--         ['@type.builtin'] = {fg = '$purple'},
--         ['@function.builtin'] = {fg = '$blue'},
--         ['@parameter'] = {fg ='$orange'},
--         ['@parameter.reference'] = {fg ='$orange'},
--         ['@property'] = {fg ='$red'},
--         ['@text.uri'] = {fg = '$blue'},
--         ['@text.todo'] = {fg = '$yellow'},
--         ['@symbol'] = {fg = '$red'},
--         ['@variable.builtin'] = {fg = '$purple'},
--     }
-- };


require('gruvbox').setup({
    transparent_mode = true,
    terminal_colors = true,
    overrides = {
        ["@punctuation.bracket"] = { fg = "#ebdbb2" },
        ["@punctuation.delimiter"] = { fg = "#ebdbb2" },
        ["@punctuation.special"] = { fg = "#ebdbb2" },
        ["@keyword.import"] = { fg = "#fb4934" },
    },
});

require('base16-colorscheme').setup({
    base00 = '#333333', base01 = '#121212', base02 = '#222222', base03 = '#333333',
    base04 = '#999999', base05 = '#c1c1c1', base06 = '#999999', base07 = '#c1c1c1',
    base08 = '#5f8787', base09 = '#aaaaaa', base0A = '#8c7f70', base0B = '#9b8d7f',
    base0C = '#aaaaaa', base0D = '#888888', base0E = '#999999', base0F = '#444444'
});

function ColorEditor(color, mode)
    color = color or 'base16-black-metal-gorgoroth'
    vim.cmd.colorscheme(color)

    mode = mode or 'dark'
    vim.opt.background=mode
end


ColorEditor()
