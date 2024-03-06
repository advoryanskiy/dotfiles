return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 10000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  --  {
  --    "doums/darcula",
  --    lazy = false,
  --    name = "darcula",
  --    priority = 1000,
  --    config = function()
  --      vim.cmd.colorscheme("darcula")
  --    end,
  --  }
}
