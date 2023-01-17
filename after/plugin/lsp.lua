local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local options = { buffer = bufnr, remap = false }

    if client.name == "eslint" then
        vim.cmd.LspStop('eslint')
        return
    end

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, options)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, options)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, options)
    vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, options)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, options)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, options)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, options)
    vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, options)
    vim.keymap.set("v", "<leader>a", vim.lsp.buf.code_action, options)
    vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, options)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, options)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, options)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
