return {
	"ahmedkhalf/project.nvim",
	opts = {
		-- Manual mode doesn't automatically change your root directory, so you have
		-- the option to manually do so using `:ProjectRoot` command.		manual_mode = true,
		manual_mode = true,
		-- Work when manual_mode is false.
		detection_methods = { "lsp", "pattern" },
		patterns = { "CMakeLists.txt", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
	},
	event = "VeryLazy",
	config = function(_, opts)
		require("project_nvim").setup(opts)
		require("lazyvim.util").on_load("telescope.nvim", function()
			require("telescope").load_extension("projects")
		end)
	end,
	keys = {
		{ "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
	},
}
