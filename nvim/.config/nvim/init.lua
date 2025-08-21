-- Mark trailing whitespace
vim.o.list = true
vim.o.listchars = 'trail:•' -- tab:» ,lead:»,

-- Basic config
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
-- vim.o.guicursor = "i:block" -- Use block cursor in insert mode


-- listchars=eol:↵,trail:~,tab:>-,nbsp:␣␣

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
      return name == '..'  --  or name == '.git'
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
