return {
  'cwebster2/github-coauthors.nvim',
  config = function()
    require('telescope').load_extension 'githubcoauthors'
  end,
}
