local M = {}

function M.copy(value)
  vim.fn.setreg("+", value)

  require("astronvim.utils").notify('Copied "' .. value .. '" to the clipboard!')
end

return M
