local configs = require 'nvim-treesitter.configs'

configs.setup {
    ensure_installed = "maintained",
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
    }
}
