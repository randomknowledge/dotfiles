return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_mouse_mappings = 1
    vim.g.VM_maps = {
      ["Select Cursor Down"] = "<M-Down>",
      ["Select Cursor Up"] = "<M-Up>",
    }
  end,
}
