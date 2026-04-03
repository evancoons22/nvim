return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "javascript",
                    "typescript",
                    "rust",
                    "python",
                    "c",
                    "lua",
                    "vim",
                    "bash",
                    "go",
                    "html",
                },
                sync_install = false,
                auto_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["il"] = "@loop.inner",
                            ["al"] = "@loop.outer",
                        },
                        selection_modes = {
                            ["@parameter.outer"] = "v",
                            ["@function.outer"] = "v",
                            ["@class.outer"] = "<c-v>",
                        },
                        include_surrounding_whitespace = true,
                    },
                },
            })
        end,
    },
}
