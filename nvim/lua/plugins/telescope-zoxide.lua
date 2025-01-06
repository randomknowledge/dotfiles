return {
  {
    "jvgrootveld/telescope-zoxide",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim", -- not strictly required, but recommended
    },
    config = function()
      local t = require("telescope")
      t.load_extension("zoxide")
      vim.keymap.set("n", "<leader>z", t.extensions.zoxide.list)
    end,
  },
}
