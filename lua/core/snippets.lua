-- Custom code snippets and utility settings
local ls_status, ls = pcall(require, 'luasnip')

-- 1. Golang Snippets (Requires LuaSnip)
if ls_status then
  local s = ls.snippet
  local t = ls.text_node
  local i = ls.insert_node

  ls.add_snippets('go', {
    -- Error check: iferr
    s('iferr', {
      t { 'if err != nil {', '\treturn ' },
      i(1, 'err'),
      t { '', '}' },
    }),
    -- Main function: main
    s('main', {
      t { 'func main() {', '\t' },
      i(0),
      t { '', '}' },
    }),
    -- JSON tag: json
    s('json', {
      t '`json:"',
      i(1, 'fieldName'),
      t '"`',
    }),
  })
end

-- 2. Prevent LSP from overwriting treesitter color settings
vim.hl.priorities.semantic_tokens = 95

-- 3. Appearance of diagnostics
vim.diagnostic.config {
  virtual_text = {
    prefix = '●',
    format = function(diagnostic)
      local code = diagnostic.code and string.format('[%s]', diagnostic.code) or ''
      return string.format('%s %s', code, diagnostic.message)
    end,
  },
  underline = false,
  update_in_insert = true,
  float = {
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = ' ',
      [vim.diagnostic.severity.WARN] = ' ',
      [vim.diagnostic.severity.INFO] = ' ',
      [vim.diagnostic.severity.HINT] = '󰌵 ',
    },
  },
  -- Make diagnostic background transparent
  on_ready = function()
    vim.cmd 'highlight DiagnosticVirtualText guibg=NONE'
  end,
}

-- 4. Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.hl.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- 5. Set kitty terminal padding to 0 when in nvim
vim.cmd [[
  augroup kitty_mp
  autocmd!
  au VimLeave * :silent !kitty @ set-spacing padding=default margin=default
  au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0 3 0 3
  augroup END
]]
