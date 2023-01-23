local util = require 'formatter.util'

local function defaultFormat()
    vim.lsp.buf.format()
end

require("formatter").setup {
    logging = false,
    log_level = vim.log.levels.OFF,
    filetype = {
        dart = { defaultFormat },
        lua = { defaultFormat },
        prisma = { defaultFormat },

        javascript = { require 'formatter.defaults.prettier' },
        javascriptreact = { require 'formatter.defaults.prettier' },
        svelte = { require 'formatter.defaults.prettier' },
        typescript = { require 'formatter.defaults.prettier' },
        typescriptreact = { require 'formatter.defaults.prettier' },
    }
}

vim.cmd [[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]]
