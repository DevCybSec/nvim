return {
	"nvim-treesitter/nvim-treesitter",
  	build = ":TSUpdate",
    	config = function()
		
		local configs = require("nvim-treesitter-config")

      		configs.setup({
			ensure_installed = {
			 "go","gosum","gomod","gowork",
			 "typescript", "javascript","tsx",
			 "lua","vim","vimdoc","jquery","markdown","markdown_inline",
			 "json", "html" },
			sync_install=false,
			highlight = { enable = true },
			indent = { enable = true },
	})
        end,
}
