vim.keymap.set("n", "<leader>R", ":below Compile<CR>")       -- copy line to system clipboard
vim.keymap.set("n", "<leader>r", ":below Recompile<CR>")       -- copy line to system clipboard
---@module "compile-mode"
---@type CompileModeOpts
vim.g.compile_mode = {
    default_command = "",
    auto_jump_to_first_error = false,
    recompile_no_fail = true,
}
