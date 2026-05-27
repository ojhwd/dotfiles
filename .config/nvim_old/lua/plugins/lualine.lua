vim.pack.add({
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = auto,
    component_separators = {''},
    section_separators = {''},
  },
  sections = {
    lualine_a = {
      {
        'mode',
        fmt = function(str)
          return str:sub(1,3)
        end,
      },
    },
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}
