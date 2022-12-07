local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

local on_attach = require("user.lsp.keymaps").on_attach

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"jdtls",
	}
})

require("mason-lspconfig").setup_handlers({
	function(server)
		lspconfig[server].setup({})
	end,
	["sumneko_lua"] = function()
		lspconfig.sumneko_lua.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
			on_attach = on_attach
		})
	end,
	["jdtls"] = function ()
		lspconfig.jdtls.setup({
			on_attach = on_attach
		})
	end
})
