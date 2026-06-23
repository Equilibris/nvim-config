return {
  "folke/trouble.nvim",
  opts = {
    auto_close = false,
    auto_open = false,
    auto_preview = true,
    auto_refresh = true,
    auto_jump = false,
    focus = false,
    restore = true,
    follow = true,
    indent_guides = true,
    max_items = 200,
    multiline = true,
    pinned = false,
    warn_no_results = true,
    open_no_results = false,
    win = {},
    preview = {
      type = "main",
      scratch = true,
    },
    modes = {
      lsp_references = {
        params = {
          include_declaration = true,
        },
      },
      lsp_base = {
        params = {
          include_current = false,
        },
      },
      symbols = {
        desc = "document symbols",
        mode = "lsp_document_symbols",
        focus = false,
        win = { position = "right" },
        filter = {
          ["not"] = { ft = "lua", kind = "Package" },
          any = {
            ft = { "help", "markdown" },
            kind = {
              "Class",
              "Constructor",
              "Enum",
              "Field",
              "Function",
              "Interface",
              "Method",
              "Module",
              "Namespace",
              "Package",
              "Property",
              "Struct",
              "Trait",
            },
          },
        },
      },
    },
  },
}