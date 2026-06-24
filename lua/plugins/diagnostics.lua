-- ============================================================================
-- Diagnostics & Code Editing
-- ============================================================================

return {
	-- Better diagnostics, quickfix, references, and LSP lists
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		opts = {},
	},

	-- Add/change/delete surrounding characters
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		opts = {},
	},
}
