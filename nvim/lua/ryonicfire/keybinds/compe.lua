local api = vim.api

-- Compe Keymapper
local key_mapper = function(mode, key, result)
    api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true, expr = true})
end

-- Keybindings
key_mapper('i', '<C-Space>', 'compe#complete()')
key_mapper('i', '<C-y>', 'compe#confirm(\'<CR>\')')
key_mapper('i', '<C-e>', 'compe#close(\'<C-e>\')')
