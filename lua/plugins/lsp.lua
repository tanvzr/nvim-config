-- ============================================================================
-- Language Server Protocol (LSP)
-- Python, Lua, Bash and R language support
-- ============================================================================

return {

	{
		"neovim/nvim-lspconfig",

		config = function()
			-- ======================================================================
			-- Completion capabilities
			-- Allows LSP to communicate with nvim-cmp
			-- ======================================================================

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- ======================================================================
			-- LSP Server Configuration
			-- ======================================================================

			-- Python
			vim.lsp.config("pyright", {
				capabilities = capabilities,
			})

			-- Lua
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})

			-- Bash / Shell scripts
			vim.lsp.config("bashls", {
				capabilities = capabilities,
			})

			-- R language
			vim.lsp.config("r_language_server", {
				capabilities = capabilities,
			})

			-- ======================================================================
			-- Enable language servers
			-- ======================================================================

			vim.lsp.enable({

				"pyright",

				"lua_ls",

				"bashls",

				"r_language_server",
			})

			-- ======================================================================
			-- LSP keymaps
			-- Only active when an LSP attaches to a buffer
			-- ======================================================================

			vim.api.nvim_create_autocmd("LspAttach", {

				callback = function(event)
					local opts = {
						buffer = event.buf,
					}

					-- Go to definition
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

					-- Show documentation
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

					-- Rename symbol
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

					-- Code actions
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

					-- Show diagnostic message
					vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

					-- Previous diagnostic
					vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

					-- Next diagnostic
					vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
				end,
			}
)
		end,
	},
}
