return {
  -- "folke/tokyonight.nvim", 
  -- lazy = false, 
  -- priority = 1000,
  -- config = function()
  --   vim.cmd.colorscheme "tokyonight-night"
  -- end
  --
  -- "Soares/base16.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   vim.cmd.colorscheme "3024"
  -- end
  --
  -- "RRethy/base16-nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   vim.cmd.colorscheme "base16-gruvbox-dark"
  -- end
  "ellisonleao/gruvbox.nvim",
  priority = 1000 ,
  config = function()
    vim.o.background = "dark" -- or "light" for light mode
    vim.cmd([[colorscheme gruvbox]])
  end

}

