vim.pack.add({
  { 
    src = "https://github.com/catppuccin/nvim", 
    name = "catppuccin",
  },
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
})

-- === theme ===

require("catppuccin").setup({
    flavour = "frappe", -- latte, frappe, macchiato, mocha
})

vim.cmd.colorscheme "catppuccin-nvim"

-- === files ===

require('nvim-tree').setup()

vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'nvim tree toggle' })

-- === lsp ===

vim.lsp.enable({
  "lua_ls",
})
