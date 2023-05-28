local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'AndrewRadev/tagalong.vim' -- Auto rename XML/HTML style tags

    use 'airblade/vim-gitgutter'   -- Git Sidebar

    use 'ap/vim-css-color'         -- Css color highlight

    use {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    }                                     -- Preview markdown files in the browser

    use 'kdheepak/lazygit.nvim'           -- Lazygit from neovim

    use 'kyazdani42/nvim-web-devicons'    -- Icons in the buffer bar

    use 'machakann/vim-highlightedyank'   -- Highlight yanked text

    use 'preservim/nerdtree'              -- File explorer (mainly side bar)

    use 'romgrk/barbar.nvim'              -- Better buffer bars

    use 'tpope/vim-commentary'            -- Comment code

    use 'tpope/vim-fugitive'              -- Git

    use 'tpope/vim-speeddating'           -- Increment/decrement dates like numbers with <C-a> and <C-x>

    use 'tpope/vim-surround'              -- Surround text with quotes, brackets, etc.

    use 'vim-scripts/ReplaceWithRegister' -- Replace text without overwriting default register

    use 'mbpowers/lorem-nvim'             -- Lorem generator

    use 'bkad/CamelCaseMotion'

    use 'simrat39/symbols-outline.nvim' -- Get all symbols for the current buffer

    -- Themes
    use 'romgrk/doom-one.vim'
    use 'sainnhe/gruvbox-material'
    use 'sainnhe/sonokai'
    use 'tomasiser/vim-code-dark'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip',                  branch = 'feat/no-echo' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'mhartington/formatter.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
