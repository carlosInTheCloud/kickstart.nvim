return {
  'github/copilot.vim',
  config = function()
    -- Your custom configuration for Copilot, if any, goes here
    vim.cmd [[
      imap <silent><script><expr> <C-x> copilot#Dismiss()
    ]]
  end,
}
