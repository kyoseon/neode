return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		dapui.setup()

		dap.adapters.codelldb = {
			type = "server",
			name = "codelldb",
			port = "${port}",
			host = "127.0.0.1",
			executable = {
				command = '/ext/kyoseon/.local/share/nvim/mason/bin/codelldb',
				args = { "--port", "${port}" },
			},
		}

		dap.configurations.rust = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				showDisassembly = "never",
				program = function()
					vim.fn.jobstart('cargo build')
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			}
		}

		dap.listeners.before.attach.dapui_config = function()
			vim.cmd.Neotree({ "close" })
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			vim.cmd.Neotree({ "close" })
			dapui.open()
		end
		--dap.listeners.before.event_terminated.dapui_config = function()
		--	dapui.close()
		--end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.fn.sign_define("DapBreakpoint", {
			text = "",
			texthl = "DapBreakpoint",
		})

		vim.keymap.set("n", "<A-t>", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<A-r>", function() dap.continue() end)
		vim.keymap.set("n", "<A-n>", dap.step_over, {})
		vim.keymap.set("n", "<A-i>", dap.step_into, {})
		vim.keymap.set("n", "<A-o>", dap.step_out, {})
		vim.keymap.set("n", "<A-x>", dap.terminate, {})
		vim.keymap.set('n', "<A-l>", dap.run_last, {})
		vim.keymap.set('n', '<A-f>', function() dapui.float_element('scopes', { enter = true }) end)
	end,
}
