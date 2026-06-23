return {
    -- Nix
    {
        "LnL7/vim-nix",
        ft = "nix",
    },

    -- LaTeX
    {
        "lervag/vimtex",
        ft = "tex",
        config = function()
            vim.g.vimtex_view_method = "zathura"
        end,
    },

    -- Typst
    {
        "chomosuke/typst-preview.nvim",
        ft = "typst",
        version = "v1.*",
        build = function()
            require("typst-preview").update()
        end,
    },

    -- OpenSCAD
    {
        "sirtaj/vim-openscad",
        ft = "openscad",
    },

    -- Rust crates
    {
        "saecki/crates.nvim",
        ft = { "rust", "toml" },
        config = function()
            require("crates").setup()
        end,
    },

    -- Haskell
    {
        "neovimhaskell/nvim-hs.vim",
        ft = "haskell",
    },

    -- Text objects
    {
        "kana/vim-textobj-user",
    },
}
