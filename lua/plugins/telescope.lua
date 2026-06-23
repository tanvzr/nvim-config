-- ============================================================================
-- Telescope
-- Fuzzy finder and project search
-- ============================================================================

return {

	{
		"nvim-telescope/telescope.nvim",

		dependencies = {

			-- Required Telescope library
			"nvim-lua/plenary.nvim",

			-- Project management integration
			"ahmedkhalf/project.nvim",
		},

		config = function()
			require("telescope").setup({})

			-- Load project picker extension
			require("telescope").load_extension("projects")

			-- ======================================================================
			-- Telescope Keymaps
			-- ======================================================================

			-- Find files
			vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
				desc = "Find files",
			}
)

			-- Search text in project
			vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
				desc = "Search text",
			}
)
		end,
	},
}
