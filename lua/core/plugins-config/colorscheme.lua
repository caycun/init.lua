require("leaf").setup({
	underlineStyle = "undercurl",
	commentStyle = "italic",
	functionStyle = "NONE",
	keywordStyle = "italic",
	statementStyle = "bold",
	typeStyle = "NONE",
	variablebuiltinStyle = "italic",
	transparent = true,
	colors = {},
	overrides = {},
	theme = "dark", -- default, based on vim.o.background, alternatives: "light", "dark"
	contrast = "low", -- default, alternatives: "medium", "high"
})

vim.cmd("colorscheme leaf")
