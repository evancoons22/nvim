-- This file can be loaded by calling `lua require('plugins')` from your init.vim or init.lua

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Lazy.nvim can manage itself
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },

    -- Plenary.nvim, a dependency for many plugins
    "nvim-lua/plenary.nvim",

    -- lsp prebuilt configs
    "neovim/nvim-lspconfig",

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.5',
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        -- build = ":TSUpdate"
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },

    "tpope/vim-dadbod",

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    "tpope/vim-fugitive"

})
