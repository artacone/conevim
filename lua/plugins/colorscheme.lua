return {
	-- { "ellisonleao/gruvbox.nvim" },
	{ "sainnhe/gruvbox-material" }, -- slghtly calmer than original gruvbox

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "gruvbox",
			colorscheme = "gruvbox-material",
		},
	},
}
