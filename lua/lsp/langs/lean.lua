local config = require 'lsp.config'

require('lean').setup {
    mappings = true,
}

-- Create command alias :L for :LeanRestartFile
vim.api.nvim_create_user_command('L', 'LeanRestartFile', {})

require('lean.abbreviations').enable('*.typ', {})
require('lean.abbreviations').enable('*.md', {})
