vim.keymap.set('n', '<leader>e', ':FzfLua files<cr>', { desc = 'Fzf find files' })
vim.keymap.set('n', '<leader>/', ':FzfLua live_grep<cr>', { desc = 'Fzf live grep' })
vim.keymap.set('n', '<leader>:', ':FzfLua command_history<cr>', { desc = 'Fzf command history' })
vim.keymap.set('n', '<leader>b', ':FzfLua buffers sort_mru=true sort_lastused=true<cr>', { desc = 'Fzf buffer search' })
-- vim.keymap.set('n', '<leader>?', ':FzfLua keymaps<cr>', { desc = 'Fzf keymaps search' })
vim.keymap.set('n', '<leader>h', ':FzfLua helptags<cr>', { desc = 'Fzf help pages search' })

-- window split
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>s", "<C-w>s<CR>", { desc = "Split window horizontally" })

-- keymaps to navigate panes
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Navigate to the left pane' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Navigate to the bottom pane' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Navigate to the top pane' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Navigate to the right pane' })

-- keymaps to resize panes
vim.keymap.set('n', '<C-Left>', '<C-w><', { desc = 'Decrease width of the current pane' })
vim.keymap.set('n', '<C-Down>', '<C-w>-', { desc = 'Decrease height of the current pane' })
vim.keymap.set('n', '<C-Up>', '<C-w>+', { desc = 'Increase height of the current pane' })
vim.keymap.set('n', '<C-Right>', '<C-w>>', { desc = 'Increase width of the current pane' })

-- keymaps to move lines up and down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move the current line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move the current line up' })

-- keymaps to escape terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- keymaps to toggle the quickfix window
vim.keymap.set('n', '<leader>q', ':copen<CR>', { desc = 'Open quickfix window' })
vim.keymap.set('n', '<leader>Q', ':cclose<CR>', { desc = 'Close quickfix window' })

-- keymaps to escape insert mode
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Exit insert mode' })

-- maintain visual context on page navigation and searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
