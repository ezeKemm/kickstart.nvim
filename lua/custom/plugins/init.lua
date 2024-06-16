-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    },
    config = function()
      require('nvim-tree').setup {}
      vim.keymap.set('n', '<leader>tt', '<cmd>:NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
    end,
  },
  {
    'tpope/vim-fugitive',
  },
  'mbbill/undotree',
  'rcarriga/nvim-notify',
  'eandrju/cellular-automaton.nvim',
  -- {
  --   dir = '~/projects/nvim-spotify',
  --   build = 'cargo build',
  --   lazy = false,
  --   config = function()
  --     require('nvim-spotify').setup({}, {})
  --   end,
  -- },
  {
    'ezeKemm/nvim-spotify',
    build = 'cargo build',
    -- lazy = false,
    -- branch = 'lua-rf',
    -- config = function()
    --   require('nvim-spotify').setup({}, {})
    -- end,
  },
  {
    'saecki/crates.nvim',
    dependencies = 'hrsh7th/nvim-cmp',
    ft = { 'rust', 'toml' },
    config = function(_, opts)
      local crates = require 'crates'
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    'alexghergh/nvim-tmux-navigation',
    config = function()
      require('nvim-tmux-navigation').setup {
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
          left = '<C-h>',
          down = '<C-j>',
          up = '<C-k>',
          right = '<C-l>',
          last_active = '<C-\\>',
          next = '<C-Space>',
        },
      }
    end,
  },
  {
    'MysticalDevil/inlay-hints.nvim',
    event = 'LspAttach',
    dependencies = { 'neovim/nvim-lspconfig' },
    config = function()
      require('inlay-hints').setup()
    end,
  },
}
