return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    local statusline = require 'mini.statusline'
    statusline.setup {
      use_icons = vim.g.have_nerd_font,
    }
  end,
}
