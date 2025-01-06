return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  config = function()
    vim.keymap.set("n", "<leader>Tn", ":TestNearest<CR>", {})
    vim.keymap.set("n", "<leader>Tf", ":TestFile<CR>", {})
    vim.keymap.set("n", "<leader>Ta", ":TestSuite<CR>", {})
    vim.keymap.set("n", "<leader>Tl", ":TestLast<CR>", {})
    -- vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", { desc = "Tests" })

    vim.cmd([[
      function! FlomuxStrategy(cmd)
        let l:new_cmd = "docker compose exec web " . substitute(a:cmd, 'pytest src/', 'pytest ', '')
        call VimuxRunCommand(l:new_cmd)
      endfunction

      " Set the vimux strategy to use the custom command
      let g:test#custom_strategies = {'flomux': function('FlomuxStrategy')}
      let g:test#strategy = 'flomux'
      let g:VimuxUseNearest = 0
    ]])
  end,
}
