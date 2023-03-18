return {
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
    "wfxr/minimap.vim",
    lazy = false,
    init = function()
      vim.g.minimap_width = 10
      vim.g.minimap_auto_start = 0
      vim.g.minimap_auto_start_win_enter = 1
    end
  },
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
