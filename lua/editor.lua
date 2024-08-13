vim.opt.compatible = false

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.smartindent = true


vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.showtabline = 0
vim.opt.signcolumn = "yes"

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>r", [[:wa<cr> 1<c-w><c-w>:!rustc "%" -o "%<".exe && "%<".exe < input.txt > output.txt<cr>]])
vim.keymap.set("t", "<esc><esc>", [[<c-\><c-n>]])
