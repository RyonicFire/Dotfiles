local key_mapper = require 'ryonicfire.utils'.key_mapper

key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<cr>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<cr>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<cr>')
key_mapper('n', '<leader>D', ':lua vim.lsp.buf.type_definition()<cr>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<cr>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
