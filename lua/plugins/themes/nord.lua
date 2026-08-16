return {
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    ------------------------------------------------------------------
    -- Nord options (must be set BEFORE loading the colorscheme)
    ------------------------------------------------------------------
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = true
    vim.g.set_cursorline_transparent = false
    vim.g.nord_italic = false
    vim.g.nord_enable_sidebar_background = false
    vim.g.nord_uniform_diff_background = true
    vim.g.nord_bold = false

    ------------------------------------------------------------------
    -- Load Nord
    ------------------------------------------------------------------
    require('nord').set()

    ------------------------------------------------------------------
    -- FORCE transparency (editor + terminal)
    ------------------------------------------------------------------
    local function set_transparent()
      local groups = {
        'Normal',
        'NormalNC',
        'TermNormal',
        'TermNormalNC',
        'Terminal',
        'EndOfBuffer',
        'SignColumn',
        'VertSplit',
        'StatusLine',
        'StatusLineNC',
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = 'none' })
      end
    end

    set_transparent()

    ------------------------------------------------------------------
    -- FORCE terminal windows to use Normal highlights
    ------------------------------------------------------------------
    vim.api.nvim_create_autocmd('TermOpen', {
      callback = function()
        vim.opt_local.winhighlight = 'Normal:Normal,NormalNC:NormalNC'
      end,
    })

    ------------------------------------------------------------------
    -- Toggle transparency (<leader>bg)
    ------------------------------------------------------------------
    local transparent = true

    local toggle_transparency = function()
      transparent = not transparent
      vim.g.nord_disable_background = transparent

      vim.cmd 'colorscheme nord'

      if transparent then
        set_transparent()
      end
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { silent = true })
  end,
}
