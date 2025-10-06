return  {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    --uncomment for light theme
--    vim.cmd.colorscheme "catppuccin-latte"
    --uncomment for dark theme
    vim.cmd.colorscheme "catppuccin"

  end
}

