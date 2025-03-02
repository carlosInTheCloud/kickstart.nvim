return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
    config = function()
      require('CopilotChat').setup {
        window = {
          layout = 'vertical', -- Keeps it as a floating window instead of a full buffer
          position = 'right',
          width = 80, -- Adjust width to fit your setup
          border = 'none', -- Removes window border
          title = '', -- Hides title text
          transparency = 0, -- No transparency effect
        },
      }
    end,
  },
}
