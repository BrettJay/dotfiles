-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle reveal<CR>', desc = 'NeoTree reveal' },
    { '<leader>b', ':Neotree toggle reveal<CR>', desc = 'NeoTree reveal' },
  },
  opts = {
    filesystem = {
      window = {
        position = 'right',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
