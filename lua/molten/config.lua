-- I find auto open annoying, keep in mind setting this option will require setting
-- a keybind for `:noautocmd MoltenEnterOutput` to open the output again
vim.g.molten_auto_open_output = false

-- this guide will be using image.nvim
-- Don't forget to setup and install the plugin if you want to view image outputs
vim.g.molten_image_provider = "image.nvim"

-- optional, I like wrapping. works for virt text and the output window
vim.g.molten_wrap_output = true

-- Output as virtual text. Allows outputs to always be shown, works with images, but can
-- be buggy with longer images
vim.g.molten_virt_text_output = true

-- this will make it so the output shows up below the \`\`\` cell delimiter
vim.g.molten_virt_lines_off_by_1 = true
-- change the configuration when editing a python file
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "*.py",
--   callback = function(e)
--     if string.match(e.file, ".otter.") then
--       return
--     end
--     if require("molten.status").initialized() == "Molten" then -- this is kinda a hack...
--       vim.fn.MoltenUpdateOption("virt_lines_off_by_1", false)
--       vim.fn.MoltenUpdateOption("virt_text_output", false)
--     else
--       vim.g.molten_virt_lines_off_by_1 = false
--       vim.g.molten_virt_text_output = false
--     end
--   end,
-- })

-- -- Undo those config changes when we go back to a markdown or quarto file
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.qmd", "*.md", "*.ipynb" },
--   callback = function(e)
--     if string.match(e.file, ".otter.") then
--       return
--     end
--     if require("molten.status").initialized() == "Molten" then
--       vim.fn.MoltenUpdateOption("virt_lines_off_by_1", true)
--       vim.fn.MoltenUpdateOption("virt_text_output", true)
--     else
--       vim.g.molten_virt_lines_off_by_1 = true
--       vim.g.molten_virt_text_output = true
--     end
--   end,
-- })
