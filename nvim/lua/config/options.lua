-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.relativenumber = true
vim.o.colorcolumn = "100"

local home_dir = "/Users/flo"
local node_bin = "/.nvm/versions/node/v20.11.0/bin"

vim.g.node_host_prog = home_dir .. node_bin .. "/node"
vim.cmd("let $PATH = '" .. home_dir .. node_bin .. ":' . $PATH")

vim.g.python3_host_prog = "/Users/flo/.config/nvim/.venv/bin/python"

function OpenVueInSplits()
  -- local current_line = vim.fn.line(".")
  local template_line = vim.fn.search("<template>")

  vim.cmd("split")
  vim.cmd(tostring(template_line))
  vim.cmd("normal! zt")

  vim.cmd("wincmd k") -- Move to the upper window
  vim.cmd("highlight WinSeparator guifg=#545454")
end

vim.api.nvim_set_keymap("n", "<leader>vue", ":lua OpenVueInSplits()<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = "*.vue",
  callback = function()
    local lineno_sc = vim.fn.search("^<script", "n")
    local lineno_st = vim.fn.search("^<style", "n")
    local lineno_t = vim.fn.search("^<template>", "n")
    if lineno_sc > 0 then
      vim.api.nvim_buf_set_mark(0, "s", lineno_sc, 0, {})
    end
    if lineno_st > 0 then
      vim.api.nvim_buf_set_mark(0, "c", lineno_st, 0, {})
    end
    if lineno_t > 0 then
      vim.api.nvim_buf_set_mark(0, "t", lineno_t, 0, {})
    end
  end,
})
