vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"

vim.api.nvim_create_augroup("RestoreCursorShapeOnExit", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", {
  group = "RestoreCursorShapeOnExit",
  command = "set guicursor=a:ver20,a:blinkwait700-blinkoff400-blinkon250",
})