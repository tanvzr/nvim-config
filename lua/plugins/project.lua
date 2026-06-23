-- ============================================================================
-- Project & Session Management
-- project.nvim + persistence.nvim
-- ============================================================================

return {

	-- ==========================================================================
	-- Project detection
	-- Finds project root directories automatically
	-- ==========================================================================

	{
		"ahmedkhalf/project.nvim",

		config = function()
			require("project_nvim").setup({

				-- Detect projects using these methods
				detection_methods = {

					"pattern",
				},

				-- Files that identify a project root
				patterns = {

					-- Git projects
					".git",

					-- Python projects
					"pyproject.toml",

					"requirements.txt",

					-- General projects
					"Makefile",

					-- R projects
					"*.Rproj",
				},
			})

			-- Enable Telescope project picker
			require("telescope").load_extension("projects")
		end,
	},

	-- ==========================================================================
	-- Session management
	-- Saves open files, windows and buffers
	-- ==========================================================================

	{
		"folke/persistence.nvim",

		-- Load before reading buffers
		event = "BufReadPre",

		config = function()
			require("persistence").setup()

			-- Restore current project session
			vim.keymap.set("n", "<leader>qs", function()
				require("persistence").load()
			end, {
				desc = "Restore session",
			}
)

			-- Restore most recent session
			vim.keymap.set("n", "<leader>ql", function()
				require("persistence").load({
					last = true,
				})
			end, {
				desc = "Restore last session",
			}
)

			-- Disable session saving
			vim.keymap.set("n", "<leader>qd", function()
				require("persistence").stop()
			end, {
				desc = "Stop session",
			}
)
		end,
	},
}
