
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

vim.diagnostic.config({
  virtual_text = true,  -- show inline messages
  signs = true,         -- show icons in the gutter
  underline = true,     -- underline the problem area
  update_in_insert = false,
})

