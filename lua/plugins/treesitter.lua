return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "c",
            "lua",
            "rust",
            "svelte",
            "typescript",
            "javascript",
            "bash",
        },
        sync_install = false,
        auto_install = true,
        ignore_install = { "javascript" },
        highlight = {
            enable = true,
            disable = {},
            additional_vim_regex_highlighting = false,
        },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
