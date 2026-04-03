return {
    "nvim-lua/plenary.nvim",
    {
        "tpope/vim-dadbod",
        cmd = { "DB", "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { "<leader>a" },
            { "<C-e>" },
            { "<C-h>" },
            { "<C-j>" },
            { "<C-k>" },
            { "<C-l>" },
        },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function()
                harpoon:list():add()
            end)
            vim.keymap.set("n", "<C-e>", function()
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end)

            vim.keymap.set("n", "<C-h>", function()
                harpoon:list():select(1)
            end)
            vim.keymap.set("n", "<C-j>", function()
                harpoon:list():select(2)
            end)
            vim.keymap.set("n", "<C-k>", function()
                harpoon:list():select(3)
            end)
            vim.keymap.set("n", "<C-l>", function()
                harpoon:list():select(4)
            end)
        end,
    },
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "G" },
        keys = {
            { "<leader>gs" },
        },
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        end,
    },
    {
        "mbbill/undotree",
        cmd = { "UndotreeToggle", "UndotreeShow", "UndotreeHide", "UndotreeFocus" },
        keys = {
            { "<leader>u" },
        },
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },
}
