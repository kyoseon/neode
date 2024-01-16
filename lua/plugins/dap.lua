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
				command = 'codelldb',
				args = { "--port", "${port}" },
			},
		}

		dap.configurations.rust = {
			{
				name = "Debug bin",
				type = "codelldb",
				request = "launch",
				showDisassembly = "never",
				program = function()
					vim.fn.jobstart('cargo build')
					return vim.fn.input("Run: ", vim.fn.getcwd() .. "/target/debug/", "file")
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
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.fn.sign_define("DapBreakpoint", {
			text = "",
			texthl = "DapBreakpoint",
		})

		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<leader>dc", dap.continue, {})
		vim.keymap.set('n', "<leader>dr", dap.run_last, {})
		vim.keymap.set("n", "<leader>dx", dap.terminate, {})
		vim.keymap.set('n', '<leader>df', function() dapui.float_element('scopes', { enter = true }) end, {})
		vim.keymap.set("n", "<A-j>", dap.step_over, {})
		vim.keymap.set("n", "<A-l>", dap.step_into, {})
		vim.keymap.set("n", "<A-k>", dap.step_out, {})
	end,
}
