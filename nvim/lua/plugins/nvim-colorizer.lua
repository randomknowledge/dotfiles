return {
  {
    "norcalli/nvim-colorizer.lua",
    init = function()
      require("colorizer").setup({
        "*", -- Highlight all files, but customize some others.
        css = { css = true },
      })
    end,
  },
}
