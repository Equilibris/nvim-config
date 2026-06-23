return {
  -- Zen mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {},
  },

  -- Trouble diagnostics
  {
    "folke/trouble.nvim",
    opts = {},
  },

  -- Hop motion
  {
    "phaazon/hop.nvim",
    branch = "v2",
    keys = {
      { "H", "<cmd>HopChar1<cr>", desc = "Hop to char"}
    },
    config = function()
      require("hop").setup()
    end,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Comment
  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup()
    end,
  },

  -- EditorConfig
  {
    "gpanders/editorconfig.nvim",
  },
}
