
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
-- Toggle terminal at the bottom
vim.keymap.set('n', '<leader>t', function()
  local term_buf = nil
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].buftype == 'terminal' then
      term_buf = buf
      break
    end
  end

  if term_buf then
    -- If terminal is visible, hide it
    local wins = vim.fn.win_findbuf(term_buf)
    if #wins > 0 then
      vim.cmd('hide')
    else
      -- Reopen terminal at the bottom
      vim.cmd('botright split')
      vim.cmd('buffer ' .. term_buf)
    end
  else
    -- Open a new terminal at the bottom
    vim.cmd('botright split | resize 15 | terminal')
  end
end, { noremap = true, silent = true, desc = "Toggle terminal at bottom" })

