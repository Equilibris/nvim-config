return {
  "andweeb/presence.nvim",
  config = function()
    require("presence"):setup({
      auto_update = true,
      neovim_image_text = "LoL RIP VSC",
      main_image = "neovim",
      log_level = nil,
      debounce_timeout = 10,
      enable_line_number = false,
      blacklist = {},
      buttons = true,
      file_assets = {},
      editing_text = "So sad %s died of ligma",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      reading_text = "Reading %s",
      workspace_text = "Working on %s",
      line_number_text = "L%s/%s",
    })
  end,
}
