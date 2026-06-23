-- ============================================================================
-- Autocompletion
-- nvim-cmp + LuaSnip
-- ============================================================================

return {

	{
		"hrsh7th/nvim-cmp",

		dependencies = {

			-- LSP completion source
			"hrsh7th/cmp-nvim-lsp",

			-- Buffer word completion
			"hrsh7th/cmp-buffer",

			-- File path completion
			"hrsh7th/cmp-path",

			-- Snippet engine
			"L3MON4D3/LuaSnip",

			-- LuaSnip completion source
			"saadparwaiz1/cmp_luasnip",
		},

		config = function()
			local cmp = require("cmp")

			cmp.setup({

				-- ====================================================================
				-- Snippet support
				-- ====================================================================

				snippet = {

					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},

				-- ====================================================================
				-- Completion keybindings
				-- ====================================================================

				mapping = cmp.mapping.preset.insert({

					-- Next item
					["<Tab>"] = cmp.mapping.select_next_item(),

					-- Previous item
					["<S-Tab>"] = cmp.mapping.select_prev_item(),

					-- Confirm completion
					["<CR>"] = cmp.mapping.confirm({
						select = true,
					}),

					-- Manually trigger completion
					["<C-Space>"] = cmp.mapping.complete(),
				}),

				-- ====================================================================
				-- Completion sources
				-- ====================================================================

				sources = cmp.config.sources({

					-- LSP suggestions
					{ name = "nvim_lsp" },

					-- Snippets
					{ name = "luasnip" },

					-- Words from current buffer
					{ name = "buffer" },

					-- File paths
					{ name = "path" },
				}),
			})
		end,
	},
}
