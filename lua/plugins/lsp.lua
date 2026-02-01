return {
-- LSP Support
   {
	"williamboman/mason.nvim",
	dependencies = { 
	         "williamboman/mason-lspconfig.nvim",
	         "hrsh7th/nvim-cmp",         -- Autocompletado
	         "hrsh7th/cmp-nvim-lsp",
	         "L3MON4D3/LuaSnip",         -- Snippets
	},
	config = function()
             require("mason").setup()
             require("mason-lspconfig").setup({
		            ensure_installed = { "gopls", "ts_ls"},
	           })
	          
             vim.lsp.config("gopls", {
                 cmd = { "gopls" },
                 filetypes = { "go", "gomod", "gowork", "gotmpl" },
                 root_markers = { "go.work", "go.mod", ".git" },
            })

            vim.lsp.enable("gopls")

            vim.lsp.config("ts_ls", {
                cmd = { "typescript-language-server", "--stdio" },
                filetypes = { "javascript", "typescript", "typescriptreact" },
                root_markers = { "package.json", "tsconfig.json", ".git" },
            })
            vim.lsp.enable("ts_ls")
      end,
    },
}
