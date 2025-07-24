local highlight = {
  'RainbowRed',
  'RainbowYellow',
  'RainbowBlue',
  'RainbowOrange',
  'RainbowGreen',
  'RainbowViolet',
  'RainbowCyan',
}

return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    ---@module 'ibl'
    ---@type ibl.config
    opts = {
      indent = {
        char = '▏',
        tab_char = '▏',
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = highlight,
      },
    },
    config = function(_, opts)
      local hooks = require 'ibl.hooks'
      local colors = require('catppuccin.palettes').get_palette 'mocha'
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = colors.red })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = colors.yellow })
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = colors.blue })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = colors.peach })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = colors.green })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = colors.lavender })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = colors.teal })
      end)
      require('ibl').setup(opts)
      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
  {
    'HiPhish/rainbow-delimiters.nvim',
    config = function()
      require('rainbow-delimiters.setup').setup {
        highlight = highlight,
      }
    end,
  },
}
