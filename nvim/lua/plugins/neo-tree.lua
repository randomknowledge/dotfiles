return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    init = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          width = 40,
          mappings = {
            ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = false } },
          },
          filesystem = {
            filtered_items = {
              hide_gitignored = true,
            },
          },
        },
      })
    end,
  },
}
