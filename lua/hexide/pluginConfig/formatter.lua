local function defaultFormat()
    vim.lsp.buf.format()
end

require("formatter").setup({
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        dart = { defaultFormat },
        lua = { defaultFormat },
        prisma = { defaultFormat },

        html = { require("formatter.defaults.prettier") },
        javascript = { require("formatter.defaults.prettier") },
        javascriptreact = { require("formatter.defaults.prettier") },
        svelte = { require("formatter.defaults.prettier") },
        typescript = { require("formatter.defaults.prettier") },
        typescriptreact = { require("formatter.defaults.prettier") },
    },
})

local formatGroup = vim.api.nvim_create_augroup("FormatAutoGroup", {})

-- FIXME: Do it through Lazy for Lengendary to pick it up
vim.keymap.set('n', '<leader>ww', function() vim.api.nvim_input ':noautocmd w<CR>' end)
vim.keymap.set('n', '<leader>ff', function() vim.api.nvim_input ':noautocmd FormatWrite<CR>' end)

vim.api.nvim_create_autocmd("FocusLost", { command = "silent! FormatWrite", group = formatGroup })

vim.api.nvim_create_autocmd("FocusLost", { command = "silent! wa", group = formatGroup })

vim.api.nvim_create_autocmd("BufWritePost", { command = "FormatWrite", group = formatGroup })
