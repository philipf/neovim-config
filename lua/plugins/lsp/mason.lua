return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"html",
				"lua_ls",
				"azure_pipelines_ls",
				"bicep",
				"csharp_ls",
				"dockerls",
				"dotls",
				"gopls",
				"jsonls",
				"tsserver",
				"spectral", --OpenAPI
				"jedi_language_server", -- Python
				"terraformls",
				"yamlls",
			},
			-- automatically install language servers from the ensure list if not available yet
			automatic_installation = true,
		})
	end,
}
