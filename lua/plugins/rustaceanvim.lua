return {
	"mrcjkb/rustaceanvim",
	version = "^3", -- Recommended
	ft = { "rust" },
	capabilities = require("cmp_nvim_lsp").default_capabilities(),

	tools = {
		hover_actions = {
			auto_focus = true,
		},
	},

	config = function()
		local mason = require("mason-registry")
		local extension_path = mason.get_package("codelldb"):get_install_path() .. "/extensions"
		local codelldb_path = extension_path .. "adapter/codelldb"
		local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

		require("dap").adapters.rust = {
			type = "server",
			port = "${port}",
			host = "127.0.0.1",
			executable = {
				command = codelldb_path,
				args = { "--liblldb", liblldb_path, "--port", "${port}" },
			},
		}

		vim.keymap.set("n", "<leader>a", function()
			vim.cmd.RustLsp({ "codeAction" })
		end, {})
		vim.keymap.set("n", "K", function()
			vim.cmd.RustLsp({ "hover", "actions" })
		end, {})
		vim.keymap.set("n", "<leader>da", function()
			vim.cmd.RustLsp({ "debuggables" })
		end, {})
	end,
}
