return {
	{
		"tpope/vim-fugitive",
		opts = {},

		config = function()
			require("oil").setup({})

			vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	},
}
