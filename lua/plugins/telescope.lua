return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = function()
    local actions = require("telescope.actions")
    local global_mappings = {
      ["<A-j>"] = actions.move_selection_next,
      ["<A-k>"] = actions.move_selection_previous,
    }

    return {
      defaults = {
        file_ignore_patterns = { "target" },
        mappings = {
          i = global_mappings,
          n = global_mappings,
        },
      },
    }
  end,
}
