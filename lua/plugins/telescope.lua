return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
	    local builtin = require("telescope.builtin")
	    vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- Buscar archivos
	    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})  -- Buscar texto dentro de archivos
	end,
}
