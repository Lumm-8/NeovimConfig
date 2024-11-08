-- nvim-tree 
vim.keymap.set('n', '<M-a>', ':NvimTreeToggle<CR>')

local ok, nvim_tree = pcall(require, "nvim-tree")

if not ok then
  vim.notify("nvim-tree filed load.." .. vim.log.levels.INFO)
--  vim.notify("Lazy.nvim 路径: " .. lazypath, vim.log.levels.INFO)
end


local api = require("nvim-tree.api")

-- 定义一个函数来包装快捷键映射
local function opts_tree(desc)
 return { desc = "nvim-tree: " .. desc, noremap = true, silent = true }
end

-- 设置 nvim-tree 的快捷键映射
-- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
-- vim.keymap.set('n', '<C-n>', api.tree.toggle, opts('Toggle nvim-tree'))
vim.keymap.set('n', '<M-f>', api.tree.open, opts_tree('Focus on nvim-tree'))
vim.keymap.set('n', '<M-v>', api.node.open.vertical, opts_tree('Focus on nvim-tree'))


-- bufferLine
vim.keymap.set("n", "<M-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<M-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<M-e>", ":BufferLinePickClose<CR>")


-- Nvim-lspconfig  keymap
-- 显示文档
vim.keymap.set("n", "<leader>lsd", ":lua vim.lsp.buf.hover()<CR>")
-- 查看定义
vim.keymap.set("n", "<leader>lgd", ":lua vim.lsp.buf.definition()<CR>")
-- 重命名
vim.keymap.set("n", "<leader>lgd", ":lua vim.lsp.buf.rename()<CR>")
-- 查询实现
vim.keymap.set("n", "<leader>lfi", ":lua vim.lsp.buf.implementation()<CR>")
-- 查找引用
vim.keymap.set("n", "<leader>lfr", ":lua vim.lsp.buf.refreences()<CR>")
-- 查找定义
vim.keymap.set("n", "<leader>lfd", ":lua vim.lsp.buf.declaration()<CR>")
-- 格式化
vim.keymap.set("n", "<leader>lfm", ":lua vim.lsp.buf.format()<CR>")
-- code action
vim.keymap.set("n", "<leader>lca", ":lua vim.lsp.buf.code_action()<CR>")


-- Nvim lspsaga
vim.keymap.set("n", "nss", ":Lspsaga outline<CR>")
