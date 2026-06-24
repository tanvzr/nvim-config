-- ============================================================================
-- Bootstrap lazy.nvim
-- ============================================================================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  return
end

vim.opt.rtp:prepend(lazypath)

-- ============================================================================
-- Core configuration
-- ============================================================================

require("config.options")
require("config.keymaps")

-- ============================================================================
-- Plugin management
-- ============================================================================

require("lazy").setup({
  spec = {
    { import = "plugins" },
    { import = "plugins.ui" },
  },
})
