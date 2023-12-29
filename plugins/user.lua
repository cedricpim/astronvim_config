return {
  { "catppuccin/nvim", as = "catppuccin" },
  { "karb94/neoscroll.nvim", init = function() require('neoscroll').setup() end },
  { "tpope/vim-rails", lazy = false, ft = { "ruby", "rake" } },
  { "vim-ruby/vim-ruby", lazy = false, ft = "ruby" },
  { "cedricpim/vim-fetch", lazy = false },
  { "mechatroner/rainbow_csv", lazy = false, ft = "csv" },
  { "pechorin/any-jump.vim", lazy = false },
  { "nordtheme/vim", lazy = false },
  { "terryma/vim-expand-region", lazy = false },
  { "simnalamburt/vim-mundo", lazy = false },
  { "lambdalisue/suda.vim", lazy = false, init = function() vim.g.suda_smart_edit = 1 end },
  { "MTDL9/vim-log-highlighting", lazy = false, ft = "log" },
  {
    "vimwiki/vimwiki",
    lazy = false,
    init = function()
      vim.g.vimwiki_list = { { path = vim.env.VIM_WIKI, syntax = 'markdown', ext = '.md' } }
    end
  },
}
