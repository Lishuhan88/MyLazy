-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Globol Settings --
option.showmode = false --不显示左下角的insert等状态
option.backspace = { "indent", "eol", "start" }
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = false
option.wildmenu = true --命令行可以自动补全
option.ignorecase = true --模糊搜索
option.smartcase = true
option.completeopt = { "menuone", "noselect" }
option.cursorline = true --高亮显示当前行
option.termguicolors = true --真彩开启
option.signcolumn = "yes" --给左边栏留更多位置
option.autoread = true
option.title = true
option.swapfile = false --和强制退出相关
option.backup = false
option.updatetime = 50 --触发响应时间
option.mouse = "a" --所有模式启用鼠标
option.exrc = true --支持每个工作目录下有一个局部的.nvim.lua文件
option.wrap = true --当一行满的时候会自动显示到下一行
option.splitright = true --打开分屏默认在右边显示
option.scrolloff = 5 --光标移动到buffer的顶部和底部时保持五行距离
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o") --解决o携带注释插入下一行的问题

-- Buffer Settings --
buffer.fileenconding = "utf-8"

-- Global Settings --
global.mapleader = " " --设置空格为leader键


-- 禁止保存文件时自动格式化
vim.g.autoformat = false

--根据项目不同在项目根目录下创建.nvim.lua文件
-- require("lspconfig").clangd.setup({
--   cmd = {
--     "clangd",
--     "--compile-commands-dir=./build/Desktop_Qt_6_5_3_MinGW_64_bit-Debug/.qtc_clangd",
--     -- NOTE：在Windows下使用相对路径和绝对路径都能生效，linux下还没试过
--     -- "--compile-commands-dir=C:/Users/lsh/Desktop/QThread_1./build/Desktop_Qt_6_5_3_MinGW_64_bit-Debug/.qtc_clangd",
--   },
--   filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
-- })

-- .clangd文件中
-- CompileFlags:
--   CompilationDatabase: ./build/Desktop_Qt_6_5_3_MinGW_64_bit-Debug/.qtc_clangd



