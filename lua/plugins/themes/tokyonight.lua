return {
  'folke/tokyonight.nvim',
  name = 'tokyonight',
  config = function()
    vim.cmd 'colorscheme tokyonight'
  end,

  -- config = function()
  --   vim.o.background = 'dark' -- or 'light'
  --
  --   local c = require('tokyonight.colors').get_colors()
  --
  --   require('tokyonight').setup {
  --     -- transparent = true,
  --     italic_comments = true,
  --     italic_inlayhints = true,
  --     underline_links = true,
  --     disable_nvimtree_bg = true,
  --     terminal_colors = true,
  --
  --     color_overrides = {
  --       vscLineNumber = '#FFFFFF',
  --     },
  --
  --     group_overrides = {
  --       Cursor = {
  --         fg = c.vscDarkBlue,
  --         bg = c.vscLightGreen,
  --         bold = true,
  --       },
  --     },
  --   }
  --
  --   -- load AFTER setup
  --   vim.cmd.colorscheme 'tokyonight'
  -- end,
}
