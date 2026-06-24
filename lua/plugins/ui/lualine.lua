-- ============================================================================
-- Status Line
-- lualine.nvim
-- ============================================================================

return {
	{
		"nvim-lualine/lualine.nvim",
        --  catppuccin Mocha (dark theme)
		config = function()
			local mode_colors = {
				n = "#89dceb", -- Normal (sky)
				i = "#a6e3a1", -- Insert (green)
				v = "#cba6f7", -- Visual (mauve)
				V = "#cba6f7",
				["\22"] = "#cba6f7",
				c = "#f0225b", -- Command (peach)
				R = "#b22222", -- Replace (red)
				t = "#74c7ec", -- Terminal (sapphire)
			}

			local function mode_color()
				return {
					fg = "#1f1f28",
					bg = mode_colors[vim.fn.mode()] or "#89dceb",
					gui = "bold",
				}
			end

			require("lualine").setup({
				options = {
					globalstatus = true,
					section_separators = "",
					component_separators = "",
				},

				sections = {
					lualine_a = {
						{
							"mode",
							color = mode_color,
						},
					},
				},
			})
		end,
	},
}
