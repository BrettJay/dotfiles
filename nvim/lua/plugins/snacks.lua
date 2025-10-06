return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        header = [[]],
      },
    },
  },
  keys = {
    {
      "<leader>t",
      function()
        Snacks.terminal.toggle()
      end,
      desc = "Toggle terminal",
    },
  },
}
