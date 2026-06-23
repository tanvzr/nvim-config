-- ============================================================================
-- Terminal
-- toggleterm.nvim
-- ============================================================================

return {

	{
		"akinsho/toggleterm.nvim",

		-- Use latest release
		version = "*",

		config = function()
			local map = vim.keymap.set

			-- ======================================================================
			-- ToggleTerm configuration
			-- ======================================================================

			require("toggleterm").setup({

				-- Terminal size
				size = 15,

				-- Default terminal shortcut
				open_mapping = [[<C-\>]],

				-- Open terminal as floating window
				direction = "float",

				-- Floating window appearance
				float_opts = {

					border = "curved",
				},
			})

			-- ======================================================================
			-- Keymaps
			-- ======================================================================

			-- Toggle floating terminal
			map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", {
				desc = "Toggle terminal",
				silent = true,
			})

			-- Exit terminal mode with jk
			map("t", "jk", "<C-\\><C-n>", {
				desc = "Exit terminal mode",
				silent = true,
			})
		end,
	},
}
