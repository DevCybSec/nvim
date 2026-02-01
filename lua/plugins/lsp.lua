return {
-- LSP Support
   {
	"neovim/nvim-lspconfig",
	dependencies = {
	         "williamboman/mason.nvim",
	         "williamboman/mason-lspconfig.nvim",
	         "hrsh7th/nvim-cmp",         -- Autocompletado
	         "hrsh7th/cmp-nvim-lsp",
	         "L3MON4D3/LuaSnip",         -- Snippets
	},
	config = function()
             require("mason").setup()
             require("mason-lspconfig").setup({
		     ensure_installed = { 
				"gopls",           -- gO
				"ts_ls",           -- tYPEsCRIPT (nESTjs)
				"eslint",          -- lINTING
				"tailwindcss",
			},
	     })
	local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        lspconfig.gopls.setup({ capabilities = capabilities })
        lspconfig.ts_ls.setup({ capabilities = capabilities })
      end,
        },
}
