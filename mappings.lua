-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>pf"] = { function() require("user.utils").copy(vim.fn.expand("%:p")) end, desc = "Yank full path" },
    ["<leader>pF"] = { function() require("user.utils").copy(vim.fn.expand("%:p") .. ":" .. vim.fn.line(".")) end, desc = "Yank full path with line" },
    ["<leader>pr"] = { function() require("user.utils").copy(vim.fn.expand("%")) end, desc = "Yank relative path" },
    ["<leader>pR"] = { function() require("user.utils").copy(vim.fn.expand("%") .. ":" .. vim.fn.line(".")) end, desc = "Yank relative path with line" },
    ["bn"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["bp"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<leader>bX"] = { function() require("astronvim.utils.buffer").close_all(false, false) end, desc = "Close all buffers without saving" },
    ["<C-u>"] = { "<cmd>call smoothie#backwards()<cr>", silent = true, remap = true },
    ["<C-n>"] = { "<cmd>call smoothie#forwards()<cr>", silent = true, remap = true },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
