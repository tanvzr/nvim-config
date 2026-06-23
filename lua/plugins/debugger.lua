-- ============================================================================
-- Debugger Configuration
-- nvim-dap + debugpy + nvim-dap-ui
-- ============================================================================

return {

	-- ==========================================================================
	-- Core Debug Adapter Protocol
	-- ==========================================================================

	{
		"mfussenegger/nvim-dap",

		config = function()
			local dap = require("dap")

			local map = vim.keymap.set

			-- ======================================================================
			-- Python Debug Adapter
			-- Uses debugpy
			-- ======================================================================

			dap.adapters.python = {

				type = "executable",

				command = "python",

				args = {

					"-m",

					"debugpy.adapter",
				},
			}

			-- ======================================================================
			-- Python Debug Configuration
			-- ======================================================================

			dap.configurations.python = {

				{

					type = "python",

					request = "launch",

					name = "Launch file",

					program = "${file}",

					pythonPath = function()
						return "python"
					end,
				},
			}

			-- ======================================================================
			-- Debugger Keymaps
			-- ======================================================================

			-- Start / continue debugging
			map("n", "<F5>", dap.continue, {
				desc = "Start/continue debugging",
				silent = true,
			})

			-- Step over
			map("n", "<F10>", dap.step_over, {
				desc = "Step over",
				silent = true,
			})

			-- Step into
			map("n", "<F11>", dap.step_into, {
				desc = "Step into",
				silent = true,
			})

			-- Step out
			map("n", "<F12>", dap.step_out, {
				desc = "Step out",
				silent = true,
			})

			-- Toggle breakpoint
			map("n", "<leader>b", dap.toggle_breakpoint, {
				desc = "Toggle breakpoint",
				silent = true,
			})
		end,
	},

	-- ==========================================================================
	-- Debugger UI
	-- ==========================================================================

	{

		"rcarriga/nvim-dap-ui",

		dependencies = {

			"mfussenegger/nvim-dap",

			"nvim-neotest/nvim-nio",
		},

		config = function()
			local dapui = require("dapui")

			local dap = require("dap")

			dapui.setup()

			-- Open UI when debugging starts
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			-- Close UI when debugging ends
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end

			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
}
