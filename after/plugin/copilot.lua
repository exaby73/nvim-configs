vim.cmd [[
    imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
]]

vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-suggest)')
