local remap = vim.keymap.set
local options = { silent = true }
local input = vim.api.nvim_input

if vim.fn.has('macunix') ~= 0 then
    -- Option + <
    remap('n', '≤', vim.cmd.BufferMovePrevious, options)
    -- Option + >
    remap('n', '≥', vim.cmd.BufferMoveNext, options)
else
    remap('n', '<A-<>', vim.cmd.BufferMovePrevious, options)
    remap('n', '<A->>', vim.cmd.BufferMoveNext, options)
end

remap('n', '<leader>1', function() input ':BufferGoto 1<CR>' end, options)
remap('n', '<leader>2', function() input ':BufferGoto 2<CR>' end, options)
remap('n', '<leader>3', function() input ':BufferGoto 3<CR>' end, options)
remap('n', '<leader>4', function() input ':BufferGoto 4<CR>' end, options)
remap('n', '<leader>5', function() input ':BufferGoto 5<CR>' end, options)
remap('n', '<leader>6', function() input ':BufferGoto 6<CR>' end, options)
remap('n', '<leader>7', function() input ':BufferGoto 7<CR>' end, options)
remap('n', '<leader>8', function() input ':BufferGoto 8<CR>' end, options)
remap('n', '<leader>9', function() input ':BufferGoto 9<CR>' end, options)
remap('n', '<leader>0', function() input ':BufferGoto 10<CR>' end, options)
remap('n', '<leader>P', vim.cmd.BufferPin, options)
remap('n', '<', vim.cmd.BufferPrevious, options)
remap('n', '>', vim.cmd.BufferNext, options)
remap('n', '<leader>?', vim.cmd.BufferClose, options)


