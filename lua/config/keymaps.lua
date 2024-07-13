-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lsp键位说明ctrl-n,p给跳转自动补全 ctrl-f,b给悬浮提示框跳转

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
keymap.set("n", "M", ":wall<CR>")
keymap.set("n", "q", ":q<CR>")
keymap.set("n", "Q", ":qall<CR>")

-- 空格+回车 取消高亮
keymap.set("n", "<leader><CR>", ":nohlsearch<CR>")

-- 快速移动光标
keymap.set("n", "E", "K") --把E改为帮助
keymap.set({'n', 'v'}, "K", "5k")
keymap.set({'n', 'v'}, "J", "5j")
keymap.set({'n', 'v'}, "zh", "^")
keymap.set({'n', 'v'}, "zl", "$")
-- 在源文件/头文件之间切换
keymap.set("n", "ga", ":ClangdSwitchSourceHeader<CR>")
-- windows下创建软连接命令 需要管理员权限
--New-Item -ItemType SymbolicLink -Path "link" -Target "target"



-- 跳转书签
keymap.set("n", "'", "`") --把’改为书签的跳转功能                                                                                                     
keymap.set("n", "dm", ":delmarks ") --dm删除marks

