return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")

		local mason = require("mason-registry")
		local extension_path = mason.get_package("codelldb"):get_install_path() .. "/extensions"
		local codelldb_path = extension_path .. "adapter/codelldb"
		local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

		dap.adapters.rust = {
			type = "server",
			port = "${port}",
			host = "127.0.0.1",
			executable = {
				command = codelldb_path,
				args = { "--liblldb", liblldb_path, "--port", "${port}" },
			},
		}

		dap.listeners.after.event_initialized["dapui_config"] = function()
			vim.cmd.Neotree({ "close" })
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			vim.cmd.Neotree({ "filesystem", "reveal", "left" })
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			vim.cmd.Neotree({ "toggle" })
			dapui.close()
		end

		vim.keymap.set("n", "<A-t>", ":DapToggleBreakpoint<CR>")
		vim.keymap.set("n", "<A-x>", ":DapTerminate<CR>")
		vim.keymap.set("n", "<A-c>", ":DapStepOver<CR>")
		vim.keymap.set("n", "<A-r>", ":DapContinue<CR>")
	end,
}
