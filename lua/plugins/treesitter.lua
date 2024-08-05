return{
    {
        "nvim-treesitter/nvim-treesitter",
        main = "nvim-treesitter.configs",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {"c", "cpp", "cmake",},
            -- 更好的高亮代码，包开的啊
            highlight = {
                enable = true,
            },
            -- 更好的格式化代码，有点问题先关了
            indent = {
                enable = false,
            },
        },
    },
}
