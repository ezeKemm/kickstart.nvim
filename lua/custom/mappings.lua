vim.keymap.set('n', ';', ':', { desc = 'Enter cmdline' })
-- Jumping up the page centers cursor
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Jump up half a page' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Jump down half a page' })

-- Added functionality to moving up and down?
vim.keymap.set('n', 'j', 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, desc = 'Move cursor down' })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = 'Move cursor up' })

-- Primeagen keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open netrw explorer' })

-- old-style Alt motions for selected text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected text down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected text up' })

-- doesn't move cursor while appending to end of line
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Append to end of line' })
-- keeps search terms in the middle
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search term' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Prev search term' })

-- greatest remap ever
-- paste a copied selection without losing copy -> moves selected text to void register
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Prime paste' })

-- next greatest remap ever : asbjornHaland
-- yank into system clipboard (+)
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = '[Y]ank into [+]' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = '[Y]ank into [+] register' })

-- TODO: Look into this
-- vim.keymap.set({ 'n', 'v' }, '<leader>di', [["_d]])

-- This is going to get me cancelled
-- for vertical edit move to save change across all lines
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Q is a cursed place to go
vim.keymap.set('n', 'Q', '<nop>')
-- dont have tmux so...
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat' })

-- TODO: FIX THIS
-- quick fix navigation
vim.keymap.set('n', '<M-k>', '<cmd>cnext<CR>zz', { desc = 'Move up quick fix list' })
vim.keymap.set('n', '<M-j>', '<cmd>cprev<CR>zz', { desc = 'Move down quick fix list' })
vim.keymap.set('n', '<M-K>', '<cmd>lnext<CR>zz', { desc = 'Move up quick fix location list' })
vim.keymap.set('n', '<M-J>', '<cmd>lprev<CR>zz', { desc = 'Move down quick fix location list' })

-- replace the word cursor is on
vim.keymap.set('n', '<leader>S', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Substitute word on cursor' })

-- TODO: Look into this bind
-- create cli executables from script inside vim
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Create executable' })

-- <leader>sn does this better?
-- vim.keymap.set('n', '<leader>vpp', '<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>')
-- TODO: Install CellularAutomaton
vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>')

-- auto shoutout (source)
vim.keymap.set('n', '<leader>o', '<cmd>so<CR>', { desc = 'Sh[o]ut out / Source' })

-- Additional toggle comment bind, more accessible
vim.keymap.set('n', '<leader>/', '<Plug>(comment_toggle_linewise_current)', { desc = 'Togg[/]e comment' })

-- Force quit
vim.keymap.set('n', '<M-q>', '<cmd>qa!<CR>', { desc = 'Force [Q]uit [A]ll' })

-- Search thru folke/todo-comments with Telescope
vim.keymap.set('n', '<leader>st', '<cmd>:TodoTelescope<CR>', { desc = '[S]earch [T]ODOs' })

-- Launch vim-fugitive
vim.keymap.set('n', '<leader>gv', vim.cmd.Git, { desc = '[V]im-fugitive Git' })

-- Ease of access UI settings NOTE: could replace with Telescope vim_options
vim.keymap.set('n', '<leader>ur', '<cmd>set rnu!<CR>', { desc = '[U]i : Toggle [R]elative Linenumbers' })

-- Toggle undo tree
vim.keymap.set('n', '<leader>tu', vim.cmd.UndotreeToggle, { desc = '[U]ndo[T]ree Toggle' })

vim.keymap.set('n', '<leader>su', '<cmd>Telescope undo<cr>', { desc = '[S]earch [U]ndo Tree' })
vim.keymap.set('n', '<S-CR>', '<cmd>w<cr>', { desc = ' Write to file' })
