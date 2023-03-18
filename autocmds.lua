local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local user_group = augroup("usergroup", { clear = true })

autocmd("FocusGained", {
  desc = "Check if file changed when its window is focus, more eager than 'autoread'",
  group = user_group,
  pattern = "*",
  callback = function() vim.api.nvim_command('checktime') end,
})

autocmd({ "BufWritePre", "FileWritePre" }, {
  desc = "Create missing parent directories",
  group = user_group,
  pattern = "*",
  callback = function() 
    vim.api.nvim_command("silent! call mkdir(expand('<afile>:p:h'), 'p')")
  end,
})


local toggle_relative_number = augroup("toggle_relative_number", { clear = true })
autocmd("InsertEnter", {
  desc = "Use absolut line numbers",
  group = toggle_relative_number,
  pattern = "*",
  command = "setlocal norelativenumber"
})
autocmd("InsertLeave", {
  desc = "Use relative line numbers",
  group = toggle_relative_number,
  pattern = "*",
  command = "setlocal relativenumber"
})
