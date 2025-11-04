return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					preview = {
						treesitter = true,
					},
					layout_config = {
						horizontal = {
							preview_width = 0.5,
							preview_cutoff = 0,
						},
						width = 0.85,
						height = 0.85,
					},
				},
				extensions = {
					file_browser = {
						theme = "ivy",
						display_stat = { date = true, size = true },
						grouped = true,
						dir_icon = "",
						initial_mode = "normal",
						path = "%:p:h",
						cwd_to_path = true,
						hidden = true,
						layout_config = {
							preview_width = 0.5,
							preview_cutoff = 0,
						},
					},
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			telescope.load_extension("file_browser")
			telescope.load_extension("ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
			vim.keymap.set(
				"n",
				"<leader>fs",
				telescope.extensions.file_browser.file_browser,
				{ desc = "Telescope file system" }
			)
		end,
	},
}
