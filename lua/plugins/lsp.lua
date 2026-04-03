return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            vim.lsp.enable("pyright")
            vim.lsp.enable("zls")
        end,
    },
}
