-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lsp键位说明ctrl-n,p给跳转自动补全 ctrl-f,b给悬浮提示框跳转
-- 关于折叠说明za折叠或者展开局部代码区，zA折叠或展开全部代码区

local keymap = vim.keymap
-- ------------- 插入模式 ------------- ---
keymap.set("i", "jf", "<esc>")
keymap.set("i", "<c-l>", "<esc>A")

-- ------------- 视觉模式 ------------- ---
keymap.set("v", "tt", "<esc>")


-- ------------- 正常模式 ------------- ---
keymap.set("n", "|", "q") --把原有q键的宏录制改为|键
--keymap.set("n", "s", "<nop>") --让s键不做任何功能
keymap.set("n", "'", "<nop>") --让'键不做任何功能
--keymap.set("n", "t", "'") --互换t和'
--keymap.set("n", "'", "t") --互换t和'
-- 保存退出
keymap.set("n", "M", "<cmd>wall<CR>")
keymap.set("n", "q", "<cmd>q<CR>")
keymap.set("n", "Q", "<cmd>qall<CR>")

-- 空格+回车 取消高亮
keymap.set("n", "<leader><CR>", "<cmd>nohlsearch<CR>")

-- 快速移动光标
keymap.set("n", "E", "K") --把E改为帮助
keymap.set({'n', 'v'}, "K", "5k")
keymap.set({'n', 'v'}, "J", "5j")
keymap.set({'n', 'v'}, "zh", "^")
keymap.set({'n', 'v'}, "zl", "$")

-- 在源文件/头文件之间切换
keymap.set("n", "ga", "<cmd>ClangdSwitchSourceHeader<CR>")

-- 跳转书签
keymap.set("n", "'", "`") --把’改为书签的跳转功能                                                                                                     
keymap.set("n", "dm", ":delmarks ") --dm删除marks

-- 缩进
keymap.set("n", "<", "<<")
keymap.set("n", ">", ">>")

--调节分屏大小
keymap.set("n", "<up>", "<cmd>res +5<CR>")
keymap.set("n", "<down>", "<cmd>res -5<CR>")
keymap.set("n", "<left>", "<cmd>vertical resize +5<CR>")
keymap.set("n", "<right>", "<cmd>vertical resize -5<CR>")

-- windows下终端相关
keymap.set({"n", "i"}, "<A-->", '<cmd>exe winheight(0)/3."split" | term powershell<cr>')
keymap.set({"n", "i"}, "<A-\\>", '<cmd>exe "vsplit" | term powershell<cr>')
keymap.set("n", "<A-w>", "<cmd>bd<CR>")


