vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require('cmp')
local luasnip = require('luasnip')

local select_opts = { behavior = cmp.SelectBehavior.Select }

local kind_icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		{ name = 'nvim_lsp'},
		{ name = 'buffer'},
		{ name = 'luasnip'},
		{ name = 'path'},
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	formatting = {
		fields = { 'menu', 'abbr', 'kind'},
		format = function(entry, item)
			item.kind = kind_icons[item.kind]
			item.menu = ({
				nvim_lsp = "[LSP]",
				luasnip = "[Snip]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name]
			return item
		end,
	},
	mapping = {
		['<C-k>'] = cmp.mapping.select_prev_item(select_opts),
		['<C-j>'] = cmp.mapping.select_next_item(select_opts),

		['<CR>'] = cmp.mapping.confirm({select = false }),

		['<C-d>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {'i', 's'}),

		['<C-b>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i', 's'}),

		['<Tab>'] = cmp.mapping(function(fallback)
      local col = vim.fn.col('.') - 1

      if cmp.visible() then
        cmp.select_next_item(select_opts)
      elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        fallback()
      else
        cmp.complete()
      end
    end, {'i', 's'}),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item(select_opts)
      else
        fallback()
      end
    end, {'i', 's'}),
	},
})
