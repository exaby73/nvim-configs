local options = { noremap = true }
local remap = vim.keymap.set
local input = vim.api.nvim_input

vim.g.mapleader = " "

-- Make <count>j and <count>k ignore wrapped lines
remap('v', 'j', function()
    input(vim.v.count ~= 0 and 'j' or 'gj')
end, options)
remap('v', 'k', function()
    input(vim.v.count ~= 0 and 'k' or 'gk')
end, options)
remap('n', 'j', function()
    input(vim.v.count ~= 0 and 'j' or 'gj')
end, options)
remap('n', 'k', function()
    input(vim.v.count ~= 0 and 'k' or 'gk')
end, options)

-- Remaps for moving lines
remap('v', 'J', function()
    input ":m '>+1<CR>gv=gv"
end, options)
remap('v', 'J', function()
    input "'<-2<CR>gv=gv"
end, options)

-- Remaps for indent and outdent
remap('v', '>', '>gv', options)
remap('v', '<', '<gv', options)

-- Remap for reload of current buffer
remap('n', 'gl', function()
    input ':e %<CR>'
end, options)

-- Remaps for navigating splits
remap('n', '<C-j>', '<C-w><C-j>', options)
remap('n', '<C-k>', '<C-w><C-k>', options)
remap('n', '<C-l>', '<C-w><C-l>', options)
remap('n', '<C-h>', '<C-w><C-h>', options)

-- Remaps for resizing tabs
remap('n', '=', '<C-w>>', options)
remap('n', '-', '<C-w><', options)
remap('n', '<leader>[', '<C-w>-', options)
remap('n', '<leader>]', '<C-w>+', options)

-- Remaps for changing tabs
remap('n', '+', 'gt', options)
remap('n', '_', 'gT', options)

-- Keep cursor position
remap('n', 'J', 'mzJ`z`')

-- Cursor in middle when searching
remap('n', 'n', 'nzzzv')
remap('n', 'N', 'Nzzzv')

-- Cursor in middle when scrolling
remap('n', '<C-d>', '<C-d>zz')
remap('n', '<C-u>', '<C-u>zz')

-- Format code
remap('n', '<leader>ff', function() vim.lsp.buf.format() end)
remap('n', '<leader>w', function()
    vim.lsp.buf.format()
    input ':w<CR>'
end) -- Format and save
