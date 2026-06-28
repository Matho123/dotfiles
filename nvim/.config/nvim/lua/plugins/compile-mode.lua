vim.keymap.set("n", "<leader>R", "q:ibelow Compile ")       -- copy line to system clipboard
vim.keymap.set("n", "<leader>r", ":below Recompile<CR>")       -- copy line to system clipboard
---@module "compile-mode"
---@type CompileModeOpts
vim.g.compile_mode = {
    default_command = "",
    baleia_setup = true,
    auto_jump_to_first_error = false,
    recompile_no_fail = true,
    use_pseudo_terminal = true,
}
