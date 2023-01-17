require 'luasnip.loaders.from_snipmate'.lazy_load()
require 'luasnip.loaders.from_vscode'.lazy_load()

local ls = require 'luasnip'
local remap = vim.keymap.set

remap('s', '<C-j>', function()
    if ls.jumpable(1) then
        ls.jump(1)
    end
end, { silent = true, noremap = true })
remap('s', '<C-k>', function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true, noremap = true })

