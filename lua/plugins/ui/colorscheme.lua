-- ============================================================================
-- Colorschemes
-- ============================================================================

return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
	},

	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},

	{
		"navarasu/onedark.nvim",
		priority = 1000,
	},

	{
		"raddari/last-color.nvim",
		config = function()
			require("last-color").setup()
		end,
	},
}
