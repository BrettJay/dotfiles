return {
  "folke/snacks.nvim",
  opts = {
    explorer = {},
    picker = {
      sources = {
        explorer = {
          layout = {
            preset = "sidebar",
            preview = false,
            layout = {
              position = "right",
            },
          },
        },
      },
    },
    layout = {
      sidebar = { position = "right" },
    },
  },
  keys = {
    {
      "<leader>fE",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
    { "\\", "<leader>fE", desc = "Explorer Snacks (cwd)", remap = true },
  },
}
