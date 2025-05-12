vim.opt.wrap = true
-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = true
-- Enable break indent
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.expandtab = false
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.softtabstop = 3
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- tab width
vim.opt.list = true
vim.opt.listchars = { tab = '»» ', trail = '·', nbsp = '␣' }
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
-- folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldcolumn = '0'
vim.opt.foldtext = ''
vim.opt.foldlevel = 99
vim.opt.foldnestmax = 3
-- Set the default width for vertical windows
local default_width = 90
-- Ensure the width is applied when opening a new vertical split
vim.api.nvim_create_autocmd('WinNew', {
  pattern = '*',
  callback = function()
    vim.cmd('vertical resize ' .. default_width)
  end,
})
-- enable copy/paste from clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true
----------------------------------------------------------------------------------------------------------
--- KEY MAPS
------------------------------------------------------------------------------------------------------------
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>gv', ':vsplit | lua vim.lsp.buf.definition()<CR>', {})
vim.keymap.set('n', '<leader>gt', '<cmd>tab split | lua vim.lsp.buf.definition()<CR>', {})
-- switch tabs right to left.
vim.keymap.set('n', 'tp', '<C-PageUp>', {})
vim.keymap.set('n', 'tn', '<C-PageDown>', {})
vim.keymap.set('n', 'zz', 'za', {})
vim.keymap.set('n', '<leader>nt', '<cmd>Neotree<CR>', {})
vim.keymap.set('n', 'qu', '<cmd>q<CR>', {})
vim.keymap.set('n', '<leader>vt', '<cmd>vert term<CR>', {})
vim.keymap.set('n', '<leader>wa', '<cmd>wa<CR>', {})
vim.keymap.set('n', '<leader>ct', ':CopilotChatOpen<CR>', {})
vim.keymap.set('n', '<leader>ce', ':CopilotChatExplain<CR>', {})
vim.keymap.set('v', '<leader>ce', ':CopilotChatExplain<CR>', {})
local copilot_prompt = function()
  vim.ui.input({ prompt = 'CopilotChat Prompt ' }, function(input)
    require('CopilotChat').ask(input)
  end)
end
vim.keymap.set('n', '<leader>cp', function()
  copilot_prompt()
end, { desc = 'CopilotChat Prompt' })
vim.keymap.set('v', '<leader>cp', function()
  copilot_prompt()
end, { desc = 'CopilotChat Prompt' })
-- Make the behavior of Caps Lock the same as when it's not on
for _, key in ipairs {
  { 'A', 'a' },
  --  { 'B', 'b' },
  { 'C', 'c' },
  { 'D', 'd' },
  { 'E', 'e' },
  { 'F', 'f' },
  --  { 'G', 'g' },
  { 'H', 'h' },
  { 'I', 'i' },
  { 'J', 'j' },
  { 'K', 'k' },
  { 'L', 'l' },
  { 'M', 'm' },
  { 'N', 'n' },
  --  { 'O', 'o' },
  { 'P', 'p' },
  { 'Q', 'q' },
  { 'R', 'r' },
  { 'S', 's' },
  { 'T', 't' },
  { 'U', 'u' },
  { 'V', 'v' },
  { 'W', 'w' },
  { 'X', 'x' },
  { 'Y', 'y' },
  { 'Z', 'z' },
} do
  vim.api.nvim_set_keymap('n', key[1], key[2], { noremap = true, silent = true })
end
--copilot key maps
vim.keymap.set('n', '<C-\\>', '<Plug>(copilot-suggest)', {})
vim.keymap.set('n', '<leader>sC', function()
  require('telescope').extensions.diff.diff_files { hidden = true }
end, { desc = 'Compare 2 files' })
vim.keymap.set('n', '<leader>sc', function()
  require('telescope').extensions.diff.diff_current { hidden = true }
end, { desc = 'Compare file with current' })
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- Copy file path
vim.api.nvim_create_user_command('Cppath', function()
  local path = vim.fn.expand '%:p'
  vim.fn.setreg('+', path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})
-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
-- NOTE: Here is where you install your plugins.
require('lazy').setup 'plugins'
-- override the status line colors
vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { fg = '#000000', bg = '#87af5f', bold = true }) -- Normal mode
vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = '#5fafff', bold = true }) -- Insert mode
vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#000000', bg = '#d7af5f', bold = true }) -- Visual mode
vim.api.nvim_set_hl(0, 'MiniStatuslineModeReplace', { fg = '#ffffff', bg = '#af0000', bold = true }) -- Replace mode
vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#ffffff', bg = '#ff5733', bold = true }) -- Command mode
vim.api.nvim_set_hl(0, 'MiniStatuslineInactive', { fg = '#aaaaaa', bg = '#303030' }) -- Inactive windowkkim.api.nvim_set_hl(0, "MiniStatuslineInactive", { fg = "#aaaaaa", bg = "#303030" }) -- Inactive windowkk
vim.cmd 'hi NormalFloat guibg=NONE ctermbg=NONE'
vim.cmd 'hi CopilotChatBorder guibg=NONE guifg=NONE'
