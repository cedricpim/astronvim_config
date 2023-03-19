return {
  { "catppuccin/nvim", as = "catppuccin" },
  { "tpope/vim-rails", lazy = false, ft = { "ruby", "rake" } },
  { "tpope/vim-ruby", lazy = false, ft = "ruby" },
  { "cedricpim/vim-fetch", lazy = false },
  { "pechorin/any-jump.vim", lazy = false },
  { "terryma/vim-expand-region", lazy = false },
  { "simnalamburt/vim-mundo", lazy = false },
  { "lambdalisue/suda.vim", lazy = false, init = function() vim.g.suda_smart_edit = 1 end, },
  { "MTDL9/vim-log-highlighting", lazy = false, ft = "log" },
  { "karb94/neoscroll.nvim", init = function() require('neoscroll').setup() end },
  { 
    "vimwiki/vimwiki",
    lazy = false,
    init = function() 
      vim.g.vimwiki_list = { { path = vim.env.VIM_WIKI, syntax = 'markdown', ext = '.md' } }
    end
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
