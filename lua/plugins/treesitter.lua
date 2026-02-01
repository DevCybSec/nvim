return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
  	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
    	config = function()
		
		local status_ok, configs = pcall(require, "nvim-treesitter.configs")
		if not status_ok then
		   return 
		end

      		configs.setup({
			ensure_installed = {
			 "go","gosum","gomod","gowork",
			 "typescript", "javascript","tsx",
			 "lua","vim","vimdoc","jquery","markdown","markdown_inline",
			 "json", "html" },
			highlight = { enable = true },
			indent = { enable = true },
	})
        end,
}
