return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "b0o/schemastore.nvim",
    },
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {},
  },

  -- Mason LSP Config
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
  },

  -- Rust tools (modern replacement for rust-tools.nvim)
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    ft = { "rust" },
  },

  -- TypeScript tools
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    opts = {},
  },

  -- VTSLS
  {
    "yioneko/nvim-vtsls",
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  },

  -- Java JDTLS
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
  },

  {
    'Julian/lean.nvim',
    event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-lua/plenary.nvim',

      -- optional dependencies:

      -- a completion engine
      --    hrsh7th/nvim-cmp or Saghen/blink.cmp are popular choices

      -- 'nvim-telescope/telescope.nvim', -- for 2 Lean-specific pickers
      -- 'andymass/vim-matchup',          -- for enhanced % motion behavior
      -- 'andrewradev/switch.vim',        -- for switch support
      -- 'tomtom/tcomment_vim',           -- for commenting
    },

    ---@type lean.Config
    opts = { -- see below for full configuration options
      mappings = true,
    }
  },

  -- Agda/Cornelis
  {
    'isovector/cornelis',
    name = 'cornelis',
    ft = 'agda',
    build = 'stack install',
    dependencies = {'neovimhaskell/nvim-hs.vim', 'kana/vim-textobj-user'},
    version = '*',
  },

  -- Hover
  {
    "lewis6991/hover.nvim",
    config = function()
      require("hover").setup({
        init = function()
          require("hover.providers.lsp")
        end,
      })
    end,
  },

  -- LSP Signature
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- Code action menu
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  },

  -- Null-ls (formatting/linting)
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        sources = {
            -- null_ls.builtins.completion.spell,
            -- null_ls.builtins.code_actions.proselint,
            -- null_ls.builtins.diagnostics.cspell,
            -- null_ls.builtins.hover.dictionary,

            -- null_ls.builtins.formatting.stylua,

            -- null_ls.builtins.formatting.prettier,
            -- null_ls.builtins.diagnostics.eslint,

            -- null_ls.builtins.code_actions.gitsigns,
            --
            -- null_ls.builtins.code_actions.statix,
            --
            -- null_ls.builtins.diagnostics.cspell,
        },

    },
  },
}
