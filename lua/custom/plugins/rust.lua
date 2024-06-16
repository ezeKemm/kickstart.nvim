return {
  {
    'mrcjkb/rustaceanvim',
    version = '^4',
    ft = { 'rust' },
    opts = {
      server = {
        on_attach = function(_, bufnr)
          -- Share Rust specific LSP keymaps with Lspconfig
          local wk = require 'which-key'
          wk.register({
            ['<leader>cR'] = {
              function()
                vim.cmd.RustLsp 'codeAction'
              end,
              'Code Action',
            },
            ['<leader>dr'] = {
              function()
                vim.cmd.RustLsp 'debuggables'
              end,
              '[R]ust [D]ebuggables',
            },
            {
              ['<leader>ce'] = {
                function()
                  vim.cmd.RustLsp 'explainError'
                end,
                '[E]xplain Error',
              },
            },
          }, { mode = 'n', buffer = bufnr })
        end,
        default_settings = {
          ['rust-analyzer'] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
              runBuildScripts = true,
            },
            checkOnSave = {
              allFeatures = true,
              command = 'clippy',
              extraArgs = { '--no-deps' },
            },
            procMacro = {
              enable = true,
              ignored = {
                ['async-trait'] = { 'async_trait' },
                ['napi-derive'] = { 'napi' },
                ['async-recursion'] = { 'async_recursion' },
              },
            },
            inlayHints = {
              bindingModeHints = {
                enable = false,
              },
              chainingHints = {
                enable = true,
              },
              closingBraceHints = {
                enable = true,
                minLines = 25,
              },
              closureReturnTypeHints = {
                enable = 'never',
              },
              lifetimeElisionHints = {
                enable = 'never',
                useParameterNames = false,
              },
              maxLength = 25,
              parameterHints = {
                enable = true,
              },
              reborrowHints = {
                enable = 'never',
              },
              renderColons = true,
              typeHints = {
                enable = true,
                hideClosureInitialization = false,
                hideNamedConstructor = false,
              },
            },
          },
        },
      },
    },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend('force', {}, opts or {})
    end,
  },
  -- { 'mfussenegger/nvim-dap' },
  -- {
  --   'rcarriga/nvim-dap-ui',
  --   dependencies = 'mfussenegger/nvim-dap',
  --   config = function()
  --     require('dapui').setup()
  --   end,
  -- },
}
