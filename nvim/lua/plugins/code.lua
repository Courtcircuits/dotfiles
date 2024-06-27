return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		opts = function()
			require("config.toggleterm")
		end,
	},
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = false,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		keys = {
			{ "<leader>no", "<cmd>ObsidianQuickSwitch<CR>" },
			{ "<leader>nw", "<cmd>ObsidianWorkspace<CR>" },
		},
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "projects",
					path = "/home/mihai/notes/vault/Polytech/projects/",
				},
				{
					name = "references",
					path = "/home/mihai/notes/vault/Polytech/references/",
				},
				{
					name = "school",
					path = "/home/mihai/notes/vault/Polytech/school/",
				},
				{
					name = "beep",
					path = "/home/mihai/notes/vault/Polytech/projects/beep/",
				},
				{
					name = "htc",
					path = "/home/mihai/notes/vault/Polytech/projects/hackthecrous/",
				},
				{
					name = "sealci",
					path = "/home/mihai/notes/vault/Polytech/projects/sealci/",
				},
			},
			picker = {
				name = "telescope.nvim",
			},
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.cmd("Gitsigns toggle_current_line_blame")
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
