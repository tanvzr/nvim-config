-- ============================================================================
-- Git Integration
-- gitsigns.nvim
-- ============================================================================

return {

	-- ==========================================================================
	-- Git signs in the editor gutter
	-- Shows added/changed/deleted lines
	-- ==========================================================================

	{

		"lewis6991/gitsigns.nvim",

		config = function()
			local map = vim.keymap.set

			require("gitsigns").setup({

				-- Git change indicators
				signs = {

					-- Added lines
					add = {
						text = "+",
					},

					-- Modified lines
					change = {
						text = "~",
					},

					-- Deleted lines
					delete = {
						text = "_",
					},

					-- Deleted at top
					topdelete = {
						text = "‾",
					},

					-- Changed and deleted
					changedelete = {
						text = "~",
					},
				},
			})

			-- ======================================================================
			-- Git hunk navigation
			-- ======================================================================

			-- Next changed section
			map("n", "]c", function()
				require("gitsigns").next_hunk()
			end, {
				desc = "Next git change",
			})

			-- Previous changed section
			map("n", "[c", function()
				require("gitsigns").prev_hunk()
			end, {
				desc = "Previous git change",
			})

			-- Preview change
			map("n", "<leader>gp", function()
				require("gitsigns").preview_hunk()
			end, {
				desc = "Preview git change",
			})
		end,
	},
}
