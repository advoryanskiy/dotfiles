return {
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		require("toggleterm").setup({
      open_mapping = [[<C-\>]],
			direction = "float",
		})
	end,
}

