-- ============================================================================
-- Editing Enhancements
-- ============================================================================

return {
	-- Shows available keybindings in a popup
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
	},

	-- Automatically inserts matching brackets, quotes, etc.
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},

	-- Easy commenting with gcc, gc, etc.
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		opts = {},
	},
}
