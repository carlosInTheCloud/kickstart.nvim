return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup {
      options = {
        hide_end_of_buffer = true,
      },
    }
    vim.cmd 'colorscheme github_dark_high_contrast'
    vim.schedule(function()
      vim.cmd 'hi WinSeparator guifg=#555555 guibg=NONE'
      vim.cmd 'hi Normal guibg=#000000'
      vim.cmd 'hi NormalNC guibg=#050505'
    end)
  end,
}
