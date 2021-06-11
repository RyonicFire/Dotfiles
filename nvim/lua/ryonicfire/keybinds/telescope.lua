local key_mapper = require 'ryonicfire.utils'.key_mapper

key_mapper('n', '<C-p>', ':Telescope find_files<cr>')
key_mapper('n', '<leader>fg', ':Telescope live_grep<cr>')
key_mapper('n', '<leader>fb', ':Telescope buffers<cr>')
key_mapper('n', '<leader>fh', ':Telescope help_tags<cr>')
