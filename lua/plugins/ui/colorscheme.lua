-- ============================================================================
-- Colorscheme
-- ============================================================================

return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("tokyonight")
		end,
	},

	{
		"rebelot/kanagawa.nvim",
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("rose-pine")
		end,
	},

	{
		"navarasu/onedark.nvim",
		priority = 1000,

		config = function()
			require("onedark").load()
		end,
	},
}
