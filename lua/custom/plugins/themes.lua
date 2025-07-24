return {
  'tanvirtin/monokai.nvim',
  'ray-x/aurora',
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      term_colors = true,
      transparent_background = true,
    },
    priority = 1000,
    integrations = {
      indent_blankline = {
        enabled = true,
        scope_color = '',
        colored_indent_levels = true,
      },
    },
  },
  { 'nyoom-engineering/oxocarbon.nvim' },
  { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
  {
    'navarasu/onedark.nvim',
    opts = {
      style = 'dark',
      toggle_style_key = '<leader>us',
      toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' },
    },
    config = function(_, opts)
      require('onedark').setup(opts)
    end,
  },
}
