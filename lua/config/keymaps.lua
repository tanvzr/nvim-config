-- ============================================================================
-- Keymap helper
-- ============================================================================

local map = vim.keymap.set

local opts = {
	noremap = true,
	silent = true,
}

-- ============================================================================
-- Insert mode
-- ============================================================================

-- Exit insert mode quickly by typing jk
map("i", "jk", "<Esc>", {
	noremap = true,
	silent = true,
	desc = "Escape insert mode",
})

-- ============================================================================
-- File explorer
-- ============================================================================

-- Toggle Neo-tree file explorer
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", {
	desc = "Toggle file explorer",
})

-- ============================================================================
-- Terminal
-- ============================================================================

-- Toggle floating terminal
map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", {
	desc = "Toggle terminal",
})

-- ============================================================================
-- Telescope
-- ============================================================================

-- Find files in current project
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
	desc = "Find files",
})

-- Search text across project
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
	desc = "Search text",
})

-- ============================================================================
-- Search
-- ============================================================================

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- ============================================================================
-- Trouble.nvim
-- ============================================================================

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",
	{ desc = "Toggle diagnostics" })

vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<CR>",
	{ desc = "Toggle quickfix list" })


-- ============================================================================
-- Future keymaps
-- ============================================================================
--
-- LSP keymaps are defined in plugins/lsp.lua using LspAttach.
-- Add additional custom mappings below as your workflow grows.
--
