local M = {
	"williamboman/mason.nvim",
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"akinsho/flutter-tools.nvim",
	{
		"j-hui/fidget.nvim",
		event = "BufEnter",
		config = function()
			require("fidget").setup()
		end,
		tag = "legacy",
		dependencies = { "neovim/nvim-lspconfig" },
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup({
				sources = {
					require("null-ls").builtins.completion.spell,
					require("null-ls").builtins.diagnostics.golangci_lint,
					require("null-ls").builtins.diagnostics.mypy,
				},
			})
		end,
	},
	{
		"kosayoda/nvim-lightbulb",
		event = "BufEnter",
		config = function()
			require("nvim-lightbulb").setup({
				sign = {
					enabled = true,
					priority = 10000,
				},
				autocmd = {
					enabled = true,
				},
			})
		end,
	},
}

return M
