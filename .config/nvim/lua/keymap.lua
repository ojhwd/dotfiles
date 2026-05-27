vim.g.mapleader = ' '

local map = vim.keymap.set

-- exiting insert
map('i', 'kj', '<C-c>', { desc = 'exit insert with kj' })
map('i', 'jj', '<C-c>', { desc = 'exit insert with kj' })

-- write, quit, etc.
map("n", "<leader>ww", "<cmd>write<CR>", { desc = "write file" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "quit" })

-- don't yank when using x
map('n', 'x', '"_x', { desc = 'use x without yanking' })

-- resize splits
map('n', '<Up>', '<cmd>resize -2<CR>', { desc = 'resize horizontally' })
map('n', '<Down>', '<cmd>resize +2<CR>', { desc = 'resize horizontally' })
map('n', '<Left>', '<cmd>vertical resize -2<CR>', { desc = 'resize vertically' })
map('n', '<Right>', '<cmd>vertical resize +2<CR>', { desc = 'resize vertically' })

-- buffers
map('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'next buffer' })
map('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'previous buffer' })
map('n', '<leader>bx', '<cmd>bd!<CR>', { desc = 'close buffer' })
map('n', '<leader>bn', '<cmd>enew<CR>', { desc = 'new buffer' })

-- splits
map('n', '<leader>sv', '<C-w>v', { desc = 'create vertical split' })
map('n', '<leader>sh', '<C-w>s', { desc = 'create horiztonal split' })
map('n', '<leader>se', '<C-w>=', { desc = 'make split equal size' })
map('n', '<leader>sx', '<cmd>close<CR>', { desc = 'close split' })

-- focus cursor
map('n', '<C-h>', '<cmd>wincmd h<CR>', { desc = 'focus left' })
map('n', '<C-j>', '<cmd>wincmd j<CR>', { desc = 'focus down' })
map('n', '<C-k>', '<cmd>wincmd k<CR>', { desc = 'focus up' })
map('n', '<C-l>', '<cmd>wincmd l<CR>', { desc = 'focus right' })

-- tabs
map('n', '<leader>tn', '<cmd>tabnew<CR>', { desc = 'new tab' })
map('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'close tab' })
map('n', '<leader>th', '<cmd>tabp<CR>', { desc = 'previous tab' })
map('n', '<leader>tl', '<cmd>tabn<CR>', { desc = 'next tab' })

-- indenting
map('v', '<', '<gv', { desc = 'stay in visual mode after indent' })
map('v', '>', '>gv', { desc = 'stay in visual mode after indent' })

-- keep original yank when pasting
map('v', 'p', '"_dP', { desc = 'keep original yank when pasting' })

-- highlighting
map('n', '<leader>hx', '<cmd>nohl<CR>', { desc = 'clear serach highlitghting' })

-- restart
map('n', '<leader>re', '<cmd>restart<CR>', { desc = 'restart neovim' })
