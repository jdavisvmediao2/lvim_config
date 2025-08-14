-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- requires Lazygit, can be gotten from conda or package manager
vim.opt.relativenumber = true -- relative line numbers

require('keybinds')
require('molten.keybinds')
require('molten.config')

lvim.plugins = {
  {
    "benlubas/molten-nvim", -- https://github.com/benlubas/molten-nvim/blob/main/docs/Notebook-Setup.md
    -- requirements:
    -- image.nvim
    -- pynvim
    -- jupyter_client
    -- optional requirements:
    -- pnglatex
    -- nbformat
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ':UpdateRemotePlugins',
  },
  {
    "quarto-dev/quarto-nvim", --tools for working with quarto manustripts (to view jp. ntbk)
    config = function ()
      require("quarto").setup({
       ft = {"quarto", "markdown"},
    })
    end,
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "GCBallesteros/jupytext.nvim", --for rndering jp ntb files as markdown, requires pip install jupytext
    -- requirements:
    -- jupytext
    -- config = true,
    config = function ()
      require("jupytext").setup({
        style = "markdown",
        output_extension = "md",
        force_ft = "markdown",
    })
      -- require("jupytext").setup({
      --   custom_language_formatting = {
      --     python = {
      --      style = "markdown",
      --      output_extension = "md"
      --       --force_ft = "markdown"
      --     }
      --   },
      -- })
    end,
  },
  {
    "3rd/image.nvim", --show images in jp nvim
    -- requirements:
    -- imagemagick
    -- kitty
    -- config = true,
    build = false,
    opts = {},
    config = function()
      require("image").setup({
        processor = "magick_cli",
      })
    end,

  },
  {
    "rmagatti/goto-preview",-- floating windows for goto
    event = "BufEnter",
    config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
  },
  {
    'mfussenegger/nvim-dap-python', -- python config for dap
    -- https://codeberg.org/mfussenegger/nvim-dap-python
    -- requirements:
    -- debugpy
    -- require("dap-python").setup("/Users/davisj7/.config/lvim/debugpy/bin/python -m debugpy --version")
    require("dap-python").setup("/Users/davisj7/.config/lvim/debugpy/bin/python")
    -- require("dap-python").resolve_python = function()
    -- return "~/"
    -- end
  },
  {
    'MeanderingProgrammer/render-markdown.nvim', -- markdown renderer
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    -- config = function()
    --     vim.api.nvim_set_hl(0, 'RenderMarkdownH2Bg', { bg = 'red' })
    --     require('render-markdown').setup({})
    -- end,
    ---@module 'render-markdown'
    -- -@type render.md.UserConfig
    opts = {
      -- 'RenderMarkdownH2Bg'=='#C3214B'

      heading=
        {
          backgrounds={
            'RenderMarkdownH1Bg',
            'RenderMarkdownH6Bg',
            'RenderMarkdownH3Bg',
            'RenderMarkdownH4Bg',
            'RenderMarkdownH5Bg',
            'RenderMarkdownH2Bg',
          }
        }
    },
}
}


--lvim.plugins = { --'run script like jupyter'; has branch in molten, may be worth trying
--  {'dccsillag/magma-nvim', build = ':UpdateRemotePlugins'}
--}
-- Please share your favourite settings on other colour schemes, so I can add defaults.
-- Currently, tokyonight is supported.
--
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers,
--                 { "ruff" })
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "python-lsp-server"
-- end, lvim.lsp.automatic_configuration.skipped_servers)
