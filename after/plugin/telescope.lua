require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

require("telescope").load_extension("fzf")

-- require("telescope-tabs").setup({})
require("telescope-tabs").setup({
	-- entry_formatter = function(tab_id, buffer_ids, file_names, file_paths, is_current)
	-- 	local entry_string = table.concat(vim.tbl_map(function(v)
	-- 		return vim.fn.fnamemodify(v, ":.")
	-- 	end, file_paths), ', ')
	-- 	return string.format('%d: %s%s', tab_id, entry_string, is_current and ' <' or '')
	-- end
})
