local function defaultFormat()
    vim.lsp.buf.format()
end

require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        dart            = { defaultFormat },
        lua             = { defaultFormat },
        prisma          = { defaultFormat },

        javascript      = { require 'formatter.defaults.prettier' },
        javascriptreact = { require 'formatter.defaults.prettier' },
        svelte          = { require 'formatter.defaults.prettier' },
        typescript      = { require 'formatter.defaults.prettier' },
        typescriptreact = { require 'formatter.defaults.prettier' },
    }
}

local formatGroup = vim.api.nvim_create_augroup('FormatAutoGroup', {})

vim.api.nvim_create_autocmd(
    'FocusLost',
    { command = 'silent! FormatWrite', group = formatGroup }
)

vim.api.nvim_create_autocmd(
    'FocusLost',
    { command = 'silent! wa', group = formatGroup }
)

vim.api.nvim_create_autocmd(
    'BufWritePost',
    { command = 'FormatWrite', group = formatGroup }
)
