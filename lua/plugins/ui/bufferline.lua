-- ============================================================================
-- Buffer Tabs
-- bufferline.nvim
-- ============================================================================

return {

	{
		"akinsho/bufferline.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("bufferline").setup({})
		end,
	},
}
