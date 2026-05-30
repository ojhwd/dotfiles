-- === plugin list ===

vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  {
    src = "https://github.com/catppuccin/nvim",
    name = "catppuccin",
  },
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  -- {
  --   src = "https://github.com/theprimeagen/harpoon",
  --   version = "harpoon2",
  -- },
})

-- === theme ===

require("catppuccin").setup({
    flavour = "frappe",
})

vim.cmd.colorscheme "catppuccin-nvim"

-- === nvim-tree file explorer ===

require('nvim-tree').setup()

vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'nvim tree toggle' })

-- === telescope ===
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: live grep" })

-- === harpoon2 ===


-- === lsp ===

vim.lsp.enable({
  "lua_ls",
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
