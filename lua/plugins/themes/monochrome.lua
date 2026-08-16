return {
  'kdheepak/monochrome.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.background = 'dark'

    vim.cmd [[colorscheme monochrome]]

    local hl = vim.api.nvim_set_hl
    hl(0, 'Normal', { fg = '#FFFFFF', bg = '#000000' })
    hl(0, 'NormalFloat', { fg = '#FFFFFF', bg = '#000000' })
    hl(0, 'LineNr', { fg = '#555555', bg = '#000000' }) -- Subtle grey for line numbers
    hl(0, 'CursorLineNr', { fg = '#FFFFFF', bg = '#000000', bold = true })

    local syntax_groups = {
      'Comment',
      'String',
      'Keyword',
      'Identifier',
      'Function',
      'Type',
      'Statement',
      'PreProc',
      'Constant',
      'Special',
    }

    for _, group in ipairs(syntax_groups) do
      hl(0, group, { fg = '#FFFFFF', italic = false, bold = false })
    end
  end,
}
