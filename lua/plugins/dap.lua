return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")

		dap.listeners.after.event_initialized["dapui_config"] = function()
			vim.cmd.Neotree({ "close" })
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			vim.cmd.Neotree({ "filesystem", "reveal", "left" })
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			vim.cmd.Neotree({ "filesystem", "reveal", "left" })
			dapui.close()
		end

		vim.keymap.set("n", "<A-t>", ":DapToggleBreakpoint<CR>")
		vim.keymap.set("n", "<A-x>", ":DapTerminate<CR>")
		vim.keymap.set("n", "<A-c>", ":DapStepOver<CR>")
	end,
}
