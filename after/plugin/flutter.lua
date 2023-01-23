require 'flutter-tools'.setup {
    fvm = true,
    decorations = {
        statusline = {
            app_version = true,
            device = true,
        }
    }
}

local remap = vim.keymap.set
local options = { silent = true }

remap("n", "gd", vim.lsp.buf.definition, options)
remap("n", "gD", vim.lsp.buf.declaration, options)
remap("n", "K", vim.lsp.buf.hover, options)
remap("n", "<leader>ws", vim.lsp.buf.workspace_symbol, options)
remap("n", "<leader>d", vim.diagnostic.open_float, options)
remap("n", "[d", vim.diagnostic.goto_next, options)
remap("n", "]d", vim.diagnostic.goto_prev, options)
remap("n", "<leader>a", vim.lsp.buf.code_action, options)
remap("v", "<leader>a", vim.lsp.buf.code_action, options)
remap("n", "<leader>rr", vim.lsp.buf.references, options)
remap("n", "<leader>rn", vim.lsp.buf.rename, options)
remap("i", "<C-h>", vim.lsp.buf.signature_help, options)

remap("n", "<leader>fs", vim.cmd.FlutterRun, options)
remap("n", "<leader>fq", vim.cmd.FlutterQuit, options)
remap("n", "<leader>fo", vim.cmd.FlutterOutlineToggle, options)
remap("n", "<leader>fd", vim.cmd.FlutterDevices, options)
remap("n", "<leader>fe", vim.cmd.FlutterEmulators, options)
remap("n", "<leader>ft", vim.cmd.FlutterOpenDevTools, options)
remap("n", "<leader>fr", vim.cmd.FlutterReload, options)
remap("n", "<leader>fR", vim.cmd.FlutterRestart, options)
remap("n", "<leader>fc", vim.cmd.FlutterLogClear, options)

remap("n", "<leader>fh", function()
    vim.api.nvim_input '<C-w>t<C-w>K'

    vim.api.nvim_input '<C-j>'
    vim.cmd.BufferPin()
    vim.api.nvim_input '<C-k>'

    vim.api.nvim_input ':res +10<CR>'
end)
