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
}
