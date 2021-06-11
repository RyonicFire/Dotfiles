-- Setup lspinstall
require 'lspinstall'.setup()

local servers = require 'lspinstall'.installed_servers()
local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'

-- Loop through all installed servers
for _, server in pairs(servers) do
    if server == "yaml" then
        -- Setup yaml lsp server with docker schema
        require 'lspconfig'['yaml'].setup{
            settings = {
                yaml = {
                    schemas = {
                        ["https://raw.githubusercontent.com/docker/compose/master/compose/config/compose_spec.json"] = "/docker-compose.yaml"
                    }
                }
            }
        }
    else
        -- Setup lsp server
        require 'lspconfig'[server].setup{}
    end
end

-- Enable snippet support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Setup emmet
if not lspconfig.emmet_ls then
    configs.emmet_ls = {
        default_config = {
            cmd = {'emmet-ls', '--stdio'};
            filetypes = {'html', 'css'};
            root_dir = function(_)
                return vim.loop.cwd()
            end;
            settings = {};
        };
    }
end

lspconfig.emmet_ls.setup{ capabilities = capabilities; }

-- Init lspkind
require('lspkind').init({
    -- enables text annotations
    --
    -- default: true
    with_text = true,

    -- default symbol map
    -- can be either 'default' or
    -- 'codicons' for codicon preset (requires vscode-codicons font installed)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
        Text = '',
        Method = 'ƒ',
        Function = '',
        Constructor = '',
        Variable = '',
        Class = '',
        Interface = 'ﰮ',
        Module = '',
        Property = '',
        Unit = '',
        Value = '',
        Enum = '了',
        Keyword = '',
        Snippet = '﬌',
        Color = '',
        File = '',
        Folder = '',
        EnumMember = '',
        Constant = '',
        Struct = ''
    },
})

