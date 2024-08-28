return{
    "simrat39/symbols-outline.nvim",
    event = "VeryLazy",
    config = function()
        require("symbols-outline").setup({
      })
        vim.keymap.set("n", "<leader>a", "<cmd>SymbolsOutline<CR>")
    end
}
