require("config.options")
require("config.mappings")

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

-- load plugins
require('lazy').setup('plugins')

-- Python provider
vim.g.python3_host_prog = 'C:/Python39/python.EXE'

-- color scheme
vim.g.sonokai_style = 'shusia'
vim.g.sonokai_better_performance = 1

vim.cmd 'colorscheme sonokai'