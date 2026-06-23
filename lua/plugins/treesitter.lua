-- ============================================================================
-- Treesitter
-- Syntax highlighting and code parsing
-- ============================================================================

return {

	{
		"nvim-treesitter/nvim-treesitter",

		-- New Treesitter API
		branch = "main",

		-- Load immediately for syntax features
		lazy = false,

		-- Update installed parsers
		build = ":TSUpdate",

		config = function()
			-- Initialize Treesitter
			require("nvim-treesitter").setup()

			-- ======================================================================
			-- Enable Treesitter highlighting automatically
			-- ======================================================================

			vim.api.nvim_create_autocmd("FileType", {

				callback = function()
					-- Start parser if available
					pcall(vim.treesitter.start)
				end,
			}
)
		end,
	},
}
