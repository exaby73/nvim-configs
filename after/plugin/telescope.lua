local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

vim.keymap.set('n', '<leader>rr', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)

if vim.fn.isdirectory('.git') ~= 0 then
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
else
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
end
