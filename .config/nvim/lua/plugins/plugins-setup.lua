local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
      "nvim-lualine/lualine.nvim",-- 状态栏  
      "folke/tokyonight.nvim", --主题
      "nvim-tree/nvim-web-devicons", -- 文档树图标
      "christoomey/vim-tmux-navigator", -- ctrl h l随意切换
      "nvim-tree/nvim-tree.lua",
      "numToStr/Comment.nvim",-- gcc和gc注释
      "akinsho/bufferline.nvim",
      "lewis6991/gitsigns.nvim",-- git 增删改提示
    }

local opts = {} -- 注意要定义这个变量
require("lazy").setup(plugins, opts)
