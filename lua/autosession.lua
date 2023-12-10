require("auto-session").setup({
	log_level = "error",

	cwd_change_handling = {
		restore_upcoming_session = false,
		pre_cwd_changed_hook = nil,
		post_cwd_changed_hoos = function()
			require("lualine").refresh()
		end,
	},
})
