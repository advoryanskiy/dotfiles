return {
  {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
-- {
--   "IndianBoy42/tree-sitter-just",
--   config = function()
--     require("tree-sitter-just").setup({})
--   end,
-- },
}
