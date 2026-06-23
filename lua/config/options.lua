-- ============================================================================
-- Leader key
-- ============================================================================

vim.g.mapleader = " "

-- ============================================================================
-- Line numbers
-- ============================================================================

vim.opt.number = true
vim.opt.relativenumber = true

-- ============================================================================
-- Indentation
-- ============================================================================

vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.tabstop = 4           -- Width of a tab character
vim.opt.shiftwidth = 4        -- Indentation width
vim.opt.smartindent = true    -- Smart auto-indentation

-- ============================================================================
-- Mouse and clipboard
-- ============================================================================

vim.opt.mouse = "a"                -- Enable mouse support
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- ============================================================================
-- Search
-- ============================================================================

vim.opt.ignorecase = true     -- Case-insensitive search
vim.opt.smartcase = true      -- Case-sensitive if uppercase used

vim.opt.hlsearch = true       -- Highlight search matches
vim.opt.incsearch = true      -- Show matches while typing

-- ============================================================================
-- Window behavior
-- ============================================================================

vim.opt.splitbelow = true     -- Horizontal splits open below
vim.opt.splitright = true     -- Vertical splits open right

vim.opt.scrolloff = 8         -- Keep cursor away from screen edges
vim.opt.wrap = false          -- Disable line wrapping

-- ============================================================================
-- Performance
-- ============================================================================

vim.opt.updatetime = 250      -- Faster update events
vim.opt.signcolumn = "yes"    -- Always show sign column
vim.opt.undofile = true       -- Persistent undo history

-- ============================================================================
-- Appearance
-- ============================================================================

vim.opt.cursorline = true     -- Highlight current line

vim.opt.termguicolors = true  -- Enable true-color support

vim.opt.laststatus = 3        -- Single global statusline
vim.opt.showmode = false      -- Hide default mode indicator

-- ============================================================================
-- Disable unused providers
-- ============================================================================

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
