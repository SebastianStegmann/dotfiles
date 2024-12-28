return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { 'echasnovski/mini.icons', opts = {} } },
	config = function()
		require('oil').setup {
			delete_to_trash = true,
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},
		}
		vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
	end,
}
-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
