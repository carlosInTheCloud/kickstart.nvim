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
      groups = {
        all = {
          Keyword = { fg = '#b76fb3' }, -- for
          ['@keyword.function'] = { fg = '#4688cc' }, -- `func`
          Function = { fg = '#f9e79f' }, -- BubbleSort
          String = { fg = '#c27e65' }, -- "Hello, World!"
          Identifier = { fg = '#8dd3fd' }, -- variableName
          ['@variable'] = { fg = '#79d8e5' },
          Operator = { fg = '#ffffff' }, -- +, -, *, /
          Boolean = { fg = '#1973d8' }, -- boolean
          ['@boolean'] = { fg = '#4688cc' }, -- boolean
          Comment = { fg = '#588844' },
        },
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
