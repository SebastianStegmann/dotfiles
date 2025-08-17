vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.undofile = true
vim.o.ignorecase = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

map({ 'n', 'v', 'x' }, '<leader>o', ':update<CR> :source<CR>')
map({ 'n', 'v', 'x' }, '<leader>w', ':write<CR>')
map({ 'n', 'v', 'x' }, '<leader>q', ':quit<CR>')
map({ 'n', 'v', 'x' }, '<leader>s', ':e #<CR>')
map({ 'n', 'v', 'x' }, '<leader>S', ':sf #<CR>')

map({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
map({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')

vim.pack.add({
  { src = "https://github.com/vague2k/vague.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/echasnovski/mini.pick" },
  { src = "https://github.com/chomosuke/typst-preview.nvim" },
  { src = "https://github.com/mason-org/mason.nvim" },

})

require "mason".setup()

require "mini.pick".setup()
map('n', '<leader><space>', '<cmd>Pick buffers<cr>', { desc = 'Search open files' })
map('n', '<leader>f', ":Pick files<CR>", { desc = 'Search all files' })
map('n', '<leader>h', ":Pick help<CR>", { desc = 'Search help tags' })
map({ 'n', 'x', 'v' }, '<leader>p', function()
  vim.fn.system(vim.fn.expand('~/Developer/rsyncbirkalv'))
end, { noremap = true, silent = true })

require("oil").setup({
  default_file_explorer = true,
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
    natural_order = true,
    is_always_hidden = function(name, _)
      return name == '..' or name == '.git'
    end,
  },
})
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })



vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.keymap.set('n', '<leader>c', "1z=<CR>")

vim.lsp.enable({ "superhtml", "lua_ls", "tinymist" })


require "vague".setup({ transparent = true })
vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=NONE")

--
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "html",
--   callback = function()
--     vim.keymap.set("i", "<leader>bp", "<!DOCTYPE html>", { buffer = true })
--   end,
-- })
-- -- autocmd filetype html inoremap .bp <!DOCTYPE html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "html",
--   callback = function()
--     vim.keymap.set("i", ".bp", "<!DOCTYPE html>", { buffer = true })
--   end,
-- })
--
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "html",
--   callback = function()
--     print("HTML FileType autocommand triggered")
--     vim.cmd("inoreabbrev <buffer> .bp <!DOCTYPE html>")
--   end,
-- })
-- vim.api.nvim_create_autocmd('TextYankPost', {
--   desc = 'Highlight when yanking text',
--   group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
--   callback = function()
--     vim.highlight.on_yank()
--   end,
-- })

-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(ev)
--     local client = vim.lsp.get_client_by_id(ev.data.client_id)
--     if client:supports_method('textDocument/completion') then
--       vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--     end
--   end,
-- })
-- vim.cmd("set completeopt+=noselect")
--
-- vim.print(vim.pack.get())
-- vim.pack.del({"packagename"})
