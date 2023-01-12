local remap = vim.keymap.set
local options = { noremap = true }
local input = vim.api.nvim_input

remap('n', '<leader>n', function() input ':NERDTreeToggle<CR>' end, options)
remap('n', '<leader>N', function() input ':NERDTreeCWD<CR>' end, options)

if vim.fn.has('macunix') ~= 0 then
    remap('n', 'ø', function() input ':NERDTreeFind<CR>' end, options)
else
    remap('n', '<A-o>', function() input ':NERDTreeFind<CR>' end, options)
end

vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeWinPos = 'right'

