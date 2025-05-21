return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  opts = {
    default_file_explorer = true,
    win_options = {
      signcolumn = "yes",
    },
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
