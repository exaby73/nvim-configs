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
remap("n", "<leader>vws", vim.lsp.buf.workspace_symbol, options)
remap("n", "<leader>vd", vim.diagnostic.open_float, options)
remap("n", "[d", vim.diagnostic.goto_next, options)
remap("n", "]d", vim.diagnostic.goto_prev, options)
remap("n", "<leader>vca", vim.lsp.buf.code_action, options)
remap("n", "<leader>vrr", vim.lsp.buf.references, options)
remap("n", "<leader>vrn", vim.lsp.buf.rename, options)
remap("i", "<C-h>", vim.lsp.buf.signature_help, options)

remap("n", "<leader>fo", vim.cmd.FlutterOutlineToggle, options)
remap("n", "<leader>fd", vim.cmd.FlutterDevices, options)
remap("n", "<leader>fe", vim.cmd.FlutterEmulators, options)
remap("n", "<leader>ft", vim.cmd.FlutterOpenDevTools, options)
remap("n", "<leader>fr", vim.cmd.FlutterReload, options)
remap("n", "<leader>fR", vim.cmd.FlutterRestart, options)
