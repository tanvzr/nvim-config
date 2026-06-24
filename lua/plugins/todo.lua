-- ============================================================================
-- Highlight TODO/FIXME comments
-- ============================================================================

return {
	{
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		event = "BufReadPost",
		opts = {},
	},
}
