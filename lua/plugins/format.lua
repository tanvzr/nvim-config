-- ============================================================================
-- Formatting
-- conform.nvim
-- ============================================================================

return {

	{
		"stevearc/conform.nvim",

		config = function()
			require("conform").setup({

				-- ====================================================================
				-- Formatter selection by file type
				-- ====================================================================

				formatters_by_ft = {

					-- Python formatting
					-- black = code formatter
					-- ruff_fix = import/lint fixes
					python = {
						"black",
						"ruff_fix",
					},

					-- R formatting
					r = {
						"styler",
					},

					-- Lua formatting
					lua = {
						"stylua",
					},

					-- Shell script formatting
					bash = {
						"shfmt",
					},

					-- JSON formatting
					json = {
						"jq",
					},

					-- JSON with comments
					jsonc = {
						"jq",
					},

					-- CSS formatting
					css = {
						"prettier",
					},
				},
			})

			-- ======================================================================
			-- Format current file
			-- ======================================================================

			vim.keymap.set("n", "<leader>fc", function()
				require("conform").format({

					-- Run asynchronously
					async = true,

					-- Use LSP formatter if Conform formatter is unavailable
					lsp_fallback = true,
				})
			end, {
				desc = "Format file",
			})
		end,
	},
}
