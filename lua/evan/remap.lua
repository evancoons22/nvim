vim.g.mapleader = ' '
-- vim.keymap.set('n', '<leader>df', vim.cmd.Ex)
vim.keymap.set('n', '<C-m>', vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- highlight to move things around
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- cursor stays in the middle.
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv") -- search terms stay in the middle
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste things without copying, deletes into other register

-- open terminal buffer in vim
vim.o.splitbelow = true
vim.keymap.set("n", "<leader>t", ":sp | terminal<CR>")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])  -- yank into register for command V
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- get the error to showup in a popup window
-- vim.api.nvim_buf_set_option('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>' { noremap=true, silent=true })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":w<CR>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new tmux-sessionizer<CR>") -- jump between projects
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- quick fix navigations... these were rebound in ./after
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/evan/packer.lua<CR>");
 -- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- MY REMAPS
-- don't really need these anymore with tmux 
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>"); -- get out of terminal mode with esc instead of tricks
vim.keymap.set("n", "<leader>x", "<C-w><C-w>"); -- change windows with <leader>x 

-- testing this
vim.keymap.set("n", "<leader>x", "<C-w><C-w>"); -- change windows with <leader>x 
-- switch windows left and right like vim

vim.keymap.set("n", "<M-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<M-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<M-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", "<C-w>l", { noremap = true, silent = true })
