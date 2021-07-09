local Tree_Status, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not Tree_Status then
    return
end


treesitter_configs.setup {
  ensure_installed = 'all', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {"haskell"},
  matchup = {
    enable = true, -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
    disable = { "latex" },
  },
}
