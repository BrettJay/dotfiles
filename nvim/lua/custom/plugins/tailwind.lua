return {
  "laytan/tailwind-sorter.nvim",
  build = 'cd formatter && npm i && npm run build',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
  config = function()
    require('tailwind-sorter').setup({
      on_save_enabled = false,                                                                                    -- If `true`, automatically enables on save sorting.
      on_save_pattern = { '*.html', '*.js', '*.jsx', '*.tsx', '*.twig', '*.hbs', '*.php', '*.heex', '*.astro' }, -- The file patterns to watch and sort.
      node_path = 'node',
    })
  end
}
