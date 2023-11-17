return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "zbirenbaum/copilot-cmp",
      name = "copilot_cmp",
      dependencies = { "zbirenbaum/copilot.lua" },
      opts = {},
      config = function()
        require("copilot_cmp").setup()
      end
    },
    opts = function(_, opts) table.insert(opts.sources, 1, { name = "copilot", priority = 1500 }) end,
  },
}
