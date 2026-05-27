vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
})

require('nvim-tree').setup()

local map = vim.keymap.set

map('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'nvim tree toggle' })
