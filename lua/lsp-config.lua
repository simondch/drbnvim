local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

---@diagnostic disable-next-line: unused-local
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})

local default_handler = function(server)
  lspconfig[server].setup({})
end

local mlsp = require("mason-lspconfig")
mlsp.setup(
  { 
   ensure_installed = { "helm_ls" }
    
  }
)
mlsp.setup_handlers({
  default_handler,
  ["helm_ls"] = function()
    lspconfig.helm_ls.setup({
      yamlls = true
    })
  end
})
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		["<CR>"] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		["<C-Space>"] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		["<C-f>"] = cmp_action.luasnip_jump_forward(),
		["<C-b>"] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion documentation
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
})

require("trouble").setup({
	mode = "document_diagnostics",
})

-- Diagnostic settings
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
})

require("lspconfig").pylsp.setup({
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					enabled = false,
				},
			},
		},
	},
})
