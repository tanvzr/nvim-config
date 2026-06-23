-- ============================================================================
-- Markdown Support
-- render-markdown.nvim + markdown-preview.nvim
-- ============================================================================

return {

	-- ==========================================================================
	-- Markdown rendering inside Neovim
	-- ==========================================================================

	{
		"MeanderingProgrammer/render-markdown.nvim",

		dependencies = {

			-- Required for Markdown parsing
			"nvim-treesitter/nvim-treesitter",
		},

		config = function()
			require("render-markdown").setup({})
		end,
	},

	-- ==========================================================================
	-- Markdown browser preview
	-- ==========================================================================

	{
		"iamcco/markdown-preview.nvim",

		-- Load only for Markdown files
		ft = {
			"markdown",
		},

		-- Install preview dependencies
		build = "cd app && npm install",

		config = function()
			-- Do not automatically open preview
			vim.g.mkdp_auto_start = 0

			-- Close preview when leaving Markdown
			vim.g.mkdp_auto_close = 1

			-- Start browser preview
			vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", {
				desc = "Markdown preview",
			}
)

			-- Stop browser preview
			vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", {
				desc = "Stop Markdown preview",
			}
)
		end,
	},
}
