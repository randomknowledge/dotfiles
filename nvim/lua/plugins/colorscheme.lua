-- return {}
-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       -- load the colorscheme here
--       vim.cmd([[colorscheme kanagawa-dragon]])
--     end,
--   },
-- }

-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = { style = "night" },
--   },
-- }

return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local onedark = require("onedark")
      onedark.setup({
        style = "warmer",
      })
      onedark.load()
    end,
  },
}
