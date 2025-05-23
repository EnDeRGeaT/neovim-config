vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


require("editor")

require("lazy").setup({
    spec = {
        { import = "plugin" },
        { import = "plugin/debug" },
    },
    change_detection = { notify = false }
})

require("handmade.terminal")
require("handmade.run_shell")

require("hydras")
