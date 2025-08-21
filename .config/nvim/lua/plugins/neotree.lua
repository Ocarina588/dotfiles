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
        commands = {
        -- If item is a file it will close neotree after opening it.
        open_and_close_neotree = function(state)
          require("neo-tree.sources.filesystem.commands").open(state)

          local tree = state.tree
          local success, node = pcall(tree.get_node, tree)

          if not success then
            return
          end

          if node.type == "file" then
            require("neo-tree.command").execute({ action = "close" })
          end
        end,
      },
      window = {
        position = "right",
        mappings = {
          ["<CR>"] = "open_and_close_neotree",
          ["<S-CR>"] = "open",
        },
      },
      },
    })
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right<CR>")
  end
}
