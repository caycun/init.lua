local packer = require("packer")

return packer.startup({
	function(use)
		use({ "wbthomason/packer.nvim" })
		use({ "ThePrimeagen/vim-be-good" })
		use({ "christoomey/vim-tmux-navigator" })
		use({ "andweeb/presence.nvim" })
		use({ "nvim-telescope/telescope.nvim" })
		use({ "prettier/vim-prettier" })
		use({ "cohama/lexima.vim" })
		use({ "nvim-lualine/lualine.nvim" })
		use({ "daschw/leaf.nvim" })
		use({ "ThePrimeagen/harpoon" })
		use({ "dstein64/vim-startuptime" })
		use({ "lewis6991/impatient.nvim" })

		-- LSP
		use({ "hrsh7th/nvim-cmp" })
		use({ "saadparwaiz1/cmp_luasnip" })
		use({ "hrsh7th/cmp-nvim-lsp" })
		use({ "glepnir/lspsaga.nvim", branch = "main" })
		use({ "jose-elias-alvarez/typescript.nvim" })
		use({ "onsails/lspkind.nvim" })
		use({ "jose-elias-alvarez/null-ls.nvim" })
		use({ "jayp0521/mason-null-ls.nvim" })
		use("simrat39/rust-tools.nvim")

		-- Debugging
		use("nvim-lua/plenary.nvim")
		use("mfussenegger/nvim-dap")

		use({
			"nvim-treesitter/nvim-treesitter",
			run = function()
				requrie("nvim-treesitter.install").update({ with_sync = true })
			end,
		})

		use({ "windwp/nvim-ts-autotag" })
		use({
			"VonHeikemen/lsp-zero.nvim",
			requires = {
				-- LSP Support
				{ "neovim/nvim-lspconfig" },
				{ "williamboman/mason.nvim" },
				{ "williamboman/mason-lspconfig.nvim" },

				-- Autocompletion
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-path" },
				{ "hrsh7th/cmp-nvim-lua" },

				-- Snippets
				{ "L3MON4D3/LuaSnip" },
				{ "rafamadriz/friendly-snippets" },
			},
		})
	end,
	config = { display = { open_fn = require("packer.util").float } },
})
