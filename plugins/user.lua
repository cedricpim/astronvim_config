return {
  { "simnalamburt/vim-mundo", lazy = false },
  { "psliwka/vim-smoothie", lazy = false, init = function() vim.g.smoothie_no_default_mappings = true end, },
  { "MTDL9/vim-log-highlighting", lazy = false },
  {
    "wfxr/minimap.vim",
    lazy = false,
    init = function()
      vim.g.minimap_width = 10
      vim.g.minimap_auto_start = 1
      vim.g.minimap_auto_start_win_enter = 1
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
