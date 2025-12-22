-- -- Keymaps for better default experience

-- -- Set leader key
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' '

-- -- For conciseness
-- local opts = { noremap = true, silent = true }

-- -- Disable the spacebar key's default behavior in Normal and Visual modes
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- -- Allow moving the cursor through wrapped lines with j, k
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- -- clear highlights
-- vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- -- save file
-- vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- -- save file without auto-formatting
-- vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- -- quit file
-- vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- -- delete single character without copying into register
-- vim.keymap.set('n', 'x', '"_x', opts)

-- -- Vertical scroll and center
-- vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
-- vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- -- Find and center
-- vim.keymap.set('n', 'n', 'nzzzv')
-- vim.keymap.set('n', 'N', 'Nzzzv')

-- -- Resize with arrows
-- vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
-- vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
-- vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
-- vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- -- Buffers
-- vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
-- vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
-- vim.keymap.set('n', '<C-i>', '<C-i>', opts) -- to restore jump forward
-- vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
-- vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- -- Increment/decrement numbers
-- vim.keymap.set('n', '<leader>+', '<C-a>', opts) -- increment
-- vim.keymap.set('n', '<leader>-', '<C-x>', opts) -- decrement

-- -- Window management
-- vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
-- vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
-- vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
-- vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- -- Navigate between splits
-- vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
-- vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
-- vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
-- vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- -- Tabs
-- vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
-- vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
-- vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
-- vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- -- Toggle line wrapping
-- vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- -- Press jk fast to exit insert mode
-- vim.keymap.set('i', 'jk', '<ESC>', opts)
-- vim.keymap.set('i', 'kj', '<ESC>', opts)

-- -- Stay in indent mode
-- vim.keymap.set('v', '<', '<gv', opts)
-- vim.keymap.set('v', '>', '>gv', opts)

-- -- Move text up and down
-- vim.keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
-- vim.keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)

-- -- Keep last yanked when pasting
-- vim.keymap.set('v', 'p', '"_dP', opts)

-- -- Replace word under cursor
-- vim.keymap.set('n', '<leader>j', '*``cgn', opts)

-- -- Explicitly yank to system clipboard (highlighted and entire row)
-- vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
-- vim.keymap.set('n', '<leader>Y', [["+Y]])

-- -- Toggle diagnostics
-- local diagnostics_active = true

-- vim.keymap.set('n', '<leader>do', function()
--   diagnostics_active = not diagnostics_active

--   if diagnostics_active then
--     vim.diagnostic.enable(true)
--   else
--     vim.diagnostic.enable(false)
--   end
-- end)

-- -- Diagnostic keymaps
-- vim.keymap.set('n', '[d', function()
--   vim.diagnostic.jump { count = -1, float = true }
-- end, { desc = 'Go to previous diagnostic message' })

-- vim.keymap.set('n', ']d', function()
--   vim.diagnostic.jump { count = 1, float = true }
-- end, { desc = 'Go to next diagnostic message' })

-- vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- -- Save and load session
-- vim.keymap.set('n', '<leader>ss', ':mksession! .session.vim<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>sl', ':source .session.vim<CR>', { noremap = true, silent = false })


-- ==============================
--        KEYMAP SETTINGS
-- ==============================

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local opts = { noremap = true, silent = true }

-- Disable default <Space>
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', opts)

-- ==============================
--        FILE ACTIONS
-- ==============================

vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', opts)           -- Save
vim.keymap.set('i', '<C-s>', '<Esc><cmd>w<CR>a', opts)     -- Save (Insert mode)
vim.keymap.set('n', '<C-n>', '<cmd>enew<CR>', opts)        -- New file

-- Close file/tab (VS Code style)
-- If you do NOT use Bdelete, replace with bd below
vim.keymap.set('n', '<C-w>', '<cmd>Bdelete<CR>', opts)
-- vim.keymap.set('n', '<C-w>', '<cmd>bd<CR>', opts)

-- ==============================
--     BUFFER / TAB NAVIGATION
-- ==============================

-- Ctrl-Tab navigation
vim.keymap.set('n', '<C-Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<C-S-Tab>', ':bprevious<CR>', opts)

-- Arrow key navigation between buffers
vim.keymap.set('n', '<Left>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<Right>', ':bnext<CR>', opts)

-- ==============================
--   NEOTREE EXPLORER CONTROL
-- ==============================

vim.keymap.set('n', '\\', '<cmd>Neotree toggle<CR>', opts) -- Normal toggle

-- Arrow key Neo-tree behavior
vim.keymap.set('n', '<Up>', ':Neotree toggle<CR>', opts)  -- Up = open/close Neo-tree
vim.keymap.set('n', '<Down>', '<C-w>w', opts)             -- Down = return focus to editor

-- ==============================
--       SPLIT NAVIGATION
-- ==============================

vim.keymap.set('n', '<C-Left>', '<C-w>h', opts)
vim.keymap.set('n', '<C-Right>', '<C-w>l', opts)
vim.keymap.set('n', '<C-Up>', '<C-w>k', opts)
vim.keymap.set('n', '<C-Down>', '<C-w>j', opts)

-- ==============================
--     SEARCH / SCROLLING
-- ==============================

vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)            -- Clear search highlight

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)             -- Scroll down centered
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)             -- Scroll up centered

vim.keymap.set('n', 'n', 'nzzzv', opts)                   -- Search next centered
vim.keymap.set('n', 'N', 'Nzzzv', opts)                   -- Search prev centered

-- ==============================
--           NAVIGATION
-- ==============================

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- ==============================
--           EDITING
-- ==============================

vim.keymap.set('n', 'x', '"_x', opts)                     -- Delete without copying

-- Move selected text (VS Code Alt+Up/Down)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Quick exit insert mode
vim.keymap.set('i', 'jk', '<Esc>', opts)
vim.keymap.set('i', 'kj', '<Esc>', opts)

-- ==============================
--        CLIPBOARD CONTROL
-- ==============================

vim.keymap.set({ 'n', 'v' }, '<C-c>', '"+y', opts)     -- Copy
vim.keymap.set('n', '<C-v>', '"+p', opts)              -- Paste (Normal Mode)
vim.keymap.set('i', '<C-v>', '<Esc>"+pa', opts)        -- Paste (Insert Mode)

-- ==============================
--     DIAGNOSTICS (LSP)
-- ==============================

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', function() vim.diagnostic.jump { count = -1, float = true } end)
vim.keymap.set('n', ']d', function() vim.diagnostic.jump { count = 1, float = true } end)

-- ==============================
--       SESSIONS (OPTIONAL)
-- ==============================

vim.keymap.set('n', '<leader>ss', ':mksession! .session.vim<CR>')
vim.keymap.set('n', '<leader>sl', ':source .session.vim<CR>')


vim.keymap.set('n', '<C-x>', '"+dd', opts)
vim.keymap.set('v', '<C-x>', '"+d', opts)

-- COPY
vim.keymap.set({ 'n', 'v' }, '<C-c>', '"+y', opts)

-- PASTE
vim.keymap.set('n', '<C-v>', '"+p', opts)
vim.keymap.set('i', '<C-v>', '<Esc>"+pa', opts)

-- Ctrl-Backspace (try these; check with Ctrl-v in insert to confirm)
vim.keymap.set('i', '<C-BS>', '<C-w>', opts)
vim.keymap.set('i', '<C-H>', '<C-w>', opts)

-- If clipboard not automatic, enable:
vim.opt.clipboard = "unnamedplus"