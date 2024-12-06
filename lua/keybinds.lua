vim.keymap.set("n", "<leader>o", function () --auto focus between windows
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  else
    vim.cmd( ":NvimTreeFocus" )
  end
end, { desc = "explorer focus"})
