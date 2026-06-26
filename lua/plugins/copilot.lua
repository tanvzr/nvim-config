-- ============================================================================
-- GitHub Copilot
-- AI code completion powered by GitHub Copilot
-- ============================================================================

return {
	{
		-- Copilot plugin
		"zbirenbaum/copilot.lua",

		-- Load when the :Copilot command is used
		cmd = "Copilot",

		-- Lazy-load when entering Insert mode
		event = "InsertEnter",

		opts = {
			suggestion = {
				-- Enable inline ghost-text suggestions
				enabled = true,

				-- Automatically show suggestions while typing
				auto_trigger = true,

				-- Delay (milliseconds) before requesting suggestions
				debounce = 75,

				-- Copilot suggestion keybindings
				keymap = {
					-- Accept suggestion ctl + l
					accept = "<C-l>",

					-- Next suggestion alt + ]
					next = "<M-]>",

					-- Previous suggestion alt + [
					prev = "<M-[>",

					-- Dismiss suggestion ctl + ]
					dismiss = "<C-]>",
				},
			},

			panel = {
				-- Disable the Copilot suggestion panel
				enabled = false,
			},
		},
	},
}
