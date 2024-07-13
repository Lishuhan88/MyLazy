-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- 缩进
opt.exrc = true --允许每个目录下都有.nvim.lua文件
opt.relativenumber = false --关闭相对行号
opt.autoindent = true --设置自动缩进
opt.cindent = true --启用c/c++风格缩进

opt.smartindent = true --智能的选择对其方式

opt.expandtab = true --将制表符扩展为空格
opt.tabstop = 4 --设置编辑时制表符占用空格数
opt.shiftwidth = 4 --设置格式化时制表符占用空格数
opt.softtabstop = 4 --设置4个空格为制表符
opt.smarttab = true --在行和段开始处使用制表符
vim.cmd("set backspace=2") --使用回车键正确处理indent,eol,start等
opt.sidescroll = 10 --设置向右滚动字符数
vim.cmd("set tw=0")
vim.cmd("set indentexpr=")
vim.cmd("set autochdir")

vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o") --解决o携带注释插入下一行的问题

-- 超出屏幕范围的内容自动换行显示
opt.wrap = true

-- 禁止保存文件时自动格式化
vim.g.autoformat = false

--编码
--opt.encoding = "utf-8"
--opt.fileencoding = "utf-8"

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



