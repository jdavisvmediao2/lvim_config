--molten keybinds
vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>",
    { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
    { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })
vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>",
    { desc = "open output window", silent = true })
vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>",
    { desc = "close output window", silent = true })
vim.keymap.set("n", "<localleader>n", ":MoltenNext<CR>",
    { desc = "next cell"})
vim.keymap.set("n", "<localleader>N", ":MoltenPrev<CR>",
    { desc = "previous cell"})
--lvim.builtin.which_key.mappings['r'] = {
--  name = "Molten",
--   
--}
--
--
--lvim.localleader = "\\"
--lvim.keys.normal_mode["<localleader>mi"] = ":MoltenInit<CR>" 
--lvim.keys.normal_mode["<localleader>e"] =  ":MoltenEvaluateOperator<CR>"
--lvim.keys.normal_mode["<localleader>rl"] = ":MoltenEvaluateline<CR>" 
--lvim.keys.normal_mode["<localleader>mi"] = ":MoltenInit" 
