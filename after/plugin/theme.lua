vim.opt.termguicolors = true

vim.opt.background = 'dark'

vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_diagnostic_line_highlight = 1
vim.g.gruvbox_material_palette = 'mix'

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

vim.cmd 'colorscheme gruvbox-material'

vim.g.airline_theme = 'gruvbox_material'
vim.cmd 'let g:airline#extensions#tabline#enabled = 1'

