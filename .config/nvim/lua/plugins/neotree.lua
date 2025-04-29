return {
  "nvim-neo-tree/neo-tree.nvim", 
  branch="v3.x", 
  dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim"},
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files
          hide_dotfiles = false, -- Do not hide dotfiles
          hide_gitignored = false, -- Hide files ignored by Git
        },
      },
    })
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right<CR>")
  end
}
