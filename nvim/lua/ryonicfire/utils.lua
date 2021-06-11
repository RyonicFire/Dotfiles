local utils = {}

-- Key mapper util
utils.key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {
        noremap = true,
        silent = true
    })
end

return utils
