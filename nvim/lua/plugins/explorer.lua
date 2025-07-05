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
}
