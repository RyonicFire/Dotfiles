local execute = vim.api.nvim_command
local fn = vim.fn

-- Packer installation path
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

-- Install packer if its not installed
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

-- Load packer
vim.cmd('packadd packer.nvim')

local packer = require 'packer'
local util = require 'packer.util'

-- Init packer
packer.init({
    package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack'),
    git = {
        clone_timeout = 600
    }
})

-- Load/Install plugins
return packer.startup(function()
    local use = packer.use

    -- Packer
    use {'wbthomason/packer.nvim', opt = true}

    -- Theme
    use 'sainnhe/sonokai'
    use 'itchyny/lightline.vim'

    -- Git Gutter
    use 'airblade/vim-gitgutter'

    -- File Tree
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'bryanmylee/vim-colorscheme-icons'

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Surround
    use 'tpope/vim-surround'

    -- Autocomplete Pairs
    use 'jiangmiao/auto-pairs'

    -- Nerd Commenter
    use 'preservim/nerdcommenter'

    -- LSP integration
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'

    -- LSP Pictograms
    use 'onsails/lspkind-nvim'

    -- Auto completion
    use {
        'hrsh7th/nvim-compe',
        -- AI Code completion
        {
            'tzachar/compe-tabnine',
            run = './install.sh'
        }
    }

    -- Snippet management
    use {
        'hrsh7th/vim-vsnip',
        requires = {
            -- HTML, JavaScript, TypeScript, Vue snippets
            { 'xabikos/vscode-javascript' }
        }
    }

    -- Syntax Highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate"
    }
end)
