-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>t", "TodoTelescope", { desc = "TodoTelescope" })
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("TodoTelescope")
end, { desc = "TodoTelescope" })

vim.keymap.set("n", "c", '"_c')

vim.keymap.set("n", "<leader>t", function()
  vim.cmd("TodoTelescope")
end, { desc = "TodoTelescope" })

vim.keymap.set({ "n", "i" }, "<C-Left>", function()
  vim.cmd("TmuxNavigateLeft")
end, { noremap = true, silent = true })

vim.keymap.set({ "n", "i" }, "<C-Right>", function()
  vim.cmd("TmuxNavigateRight")
end, { noremap = true, silent = true })

vim.keymap.set({ "n", "i" }, "<C-Up>", function()
  vim.cmd("TmuxNavigateUp")
end, { noremap = true, silent = true })

vim.keymap.set({ "n", "i" }, "<C-Down>", function()
  vim.cmd("TmuxNavigateDown")
end, { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "qf" },
  callback = function()
    vim.keymap.set("n", "x", "<cmd>call setqflist(filter(getqflist(), {idx -> idx != line('.') - 1}), 'r')<CR>", {
      noremap = true,
      silent = true,
      buffer = true,
    })
  end,
})

----------------------------------
-- iTerm specific --
----------------------------------
-- vim.keymap.set("n", "¡", "<Cmd>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "“", "<Cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true }) -- de
-- vim.keymap.set("n", "™", "<Cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true }) -- us
-- vim.keymap.set("n", "¶", "<Cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true }) -- de
-- vim.keymap.set("n", "£", "<Cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true }) -- us
-- vim.keymap.set("n", "¢", "<Cmd>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
--
-- vim.keymap.set("n", "<M-Left>", "<Cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-Right>", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "∑", "<Cmd>lua require('bufferline').unpin_and_close()<CR>", { noremap = true, silent = true })

----------------------------------
-- Other Terminals --
----------------------------------
vim.keymap.set("n", "<M-1>", "<Cmd>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-2>", "<Cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-3>", "<Cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-4>", "<Cmd>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<M-Left>", "<Cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Right>", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-w>", "<Cmd>lua require('bufferline').unpin_and_close()<CR>", { noremap = true, silent = true })

vim.keymap.del("n", "<S-l>")

-- vim.keymap.set({ "n" }, "<C-s>", function()
--   vim.cmd("normal! gsr\"'")
-- end, { noremap = true, silent = true })
