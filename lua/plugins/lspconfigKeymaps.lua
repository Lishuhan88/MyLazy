return{
    {
        "neovim/nvim-lspconfig",
        init = function ()
           local keys = require("lazyvim.plugins.lsp.keymaps").get()
            -- disable a keymap 更新lazyvim之后下面这行不起作用
            keys[#keys + 1] = {"K", false}

            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf }
                    vim.keymap.set('n', 'U', vim.lsp.buf.hover, opts)--U键设置为显示变量悬浮窗口
                    vim.keymap.set('n', 'K', '5k', opts) --设置K为向上快速移动五行
                end,
            })
        end,
        opts = {
            inlay_hints = {enabled = false}
        }
    },
}
