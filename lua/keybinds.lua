lvim.builtin.which_key.mappings["o"] = {
  function () --auto focus between windows
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  else
    vim.cmd( ":NvimTreeFocus" )
  end
end,
  "explorer focus"
}
