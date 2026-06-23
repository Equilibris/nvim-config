return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({})

    -- Hack to remove insertmode mappings
    vim.api.nvim_set_keymap("i", "ys", "ys", { noremap = true })
    vim.api.nvim_del_keymap("i", "ys")
  end,
}
