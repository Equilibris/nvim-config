return {
  -- Catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Nord theme
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      -- Uncomment to use Nord instead of Catppuccin
      -- vim.cmd.colorscheme("nord")
    end,
  },
}