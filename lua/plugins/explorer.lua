-- ============================================================================
-- File Explorer
-- Neo-tree.nvim
-- ============================================================================

return {

	{
		"nvim-neo-tree/neo-tree.nvim",

		-- Stable Neo-tree v3 branch
		branch = "v3.x",

		-- Required dependencies
		dependencies = {

			-- Utility functions used by many plugins
			"nvim-lua/plenary.nvim",

			-- UI components
			"MunifTanjim/nui.nvim",

			-- File icons
			"nvim-tree/nvim-web-devicons",
		},

		-- Load plugin only when this key is pressed
		keys = {

			{
				"<leader>e",

				-- Toggle file explorer
				"<cmd>Neotree toggle<CR>",

				desc = "Toggle file explorer",
			},
		},

		config = function()
			require("neo-tree").setup({

				-- Close Neo-tree automatically if it is the last window
				close_if_last_window = true,

				filesystem = {

					filtered_items = {

						-- Show hidden files (.git, .config, etc.)
						hide_dotfiles = false,
					},
				},
			})
		end,
	},
}
