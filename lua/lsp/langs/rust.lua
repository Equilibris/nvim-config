local config = require 'lsp.config'
local on_attach = config.on_attach
local capabilities = config.capabilities

-- Rustaceanvim configuration (modern replacement for rust-tools)
vim.g.rustaceanvim = {
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
        -- cmd = { '/home/williams/.nix-profile/bin/rust-analyzer' },
        cmd = { 'rust-analyzer' },
        standalone = true,
    },
    tools = {
        hover_actions = {
            auto_focus = false,
        },
    },
    dap = {
        adapter = {
            type = 'executable',
            command = 'lldb-vscode',
            name = 'rt_lldb',
        },
    },
}

require('crates').setup {}
