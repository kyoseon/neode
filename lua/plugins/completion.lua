return {
	"hrsh7th/nvim-cmp",

	dependencies = {
		"hrsh7th/cmp-nvim-lsp",

		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/vim-vsnip",

		requires = { "hrsh7th/nvim-cmp" },
	},

	config = function()
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			mapping = {
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				-- Add tab support
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
				["<Tab>"] = cmp.mapping.select_next_item(),
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				["<C-CR>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				}),
			},
			sources = {
				{ name = "path" },
				{ name = "nvim_lsp" },
				{ name = "nvim_lsp_signature_help" },
				{ name = "nvim_lua" },
				{ name = "buffer" },
				{ name = "vsnip" },
				{ name = "calc" },
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			formatting = {
				fields = { "menu", "abbr", "kind" },
				format = function(entry, item)
					local menu_icon = {
						nvim_lsp = "λ",
						vsnip = "",
						buffer = "󰍛",
						path = "",
					}
					item.menu = menu_icon[entry.source.name]
					return item
				end,
			},
		})
		-- `:` cmdline setup.
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' }
			}, {
				{
					name = 'cmdline',
					option = {
						ignore_cmds = { 'Man', '!' }
					}
				}
			})
		})
	end,
}
