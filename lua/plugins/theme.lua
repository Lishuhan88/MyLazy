return{
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
        },
        config = function ()
            require("tokyonight").setup({
                -- 使用storm样式
                style = "storm",
                styles = {
                    -- 禁止一切斜体
                    comments = { italic = false },
                    keywords = { italic = false },
                },
            })
            require('barbecue').setup{
                theme = 'tokyonight',
            }
        end
    },
    -- {
    --     "olimorris/onedarkpro.nvim",
    --     config = function ()
    --         require("onedarkpro").setup({
    --             highlights = {
    --                 -- 禁止一切斜体
    --                 Comment = { italic = false },
    --                 Directory = { bold = true },
    --                 ErrorMsg = { italic = false, bold = true }
    --             },
    --             vim.cmd("colorscheme onedark"),
    --         })
    --     end
    -- },
}
