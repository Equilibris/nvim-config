return {
  -- File explorer
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
    },
    opts = {},
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    opts = {},
  },

  -- Buffer line (cokeline)
  {
    "noib3/nvim-cokeline",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = true,
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
  },

  -- Discord presence
  {
    "andweeb/presence.nvim",
    config = true,
  },
}