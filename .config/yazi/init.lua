local rose_pine = {
	base = "#232136",
	surface = "#2a273f",
	overlay = "#393552",
	muted = "#6e6a86",
	subtle = "#908caa",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ea9a97",
	pine = "#3e8fb0",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_low = "#2a283e",
	highlight_med = "#44415a",
	highlight_high = "#56526e",
}

-- Plugins
require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },
	part_separator = { open = "│", close = "│" },

	style_a = {
		fg = rose_pine.base,
		bg_mode = {
			normal = rose_pine.foam,
			select = rose_pine.gold,
			un_set = rose_pine.love,
		},
	},
	style_b = { bg = rose_pine.surface, fg = rose_pine.text },
	style_c = { bg = rose_pine.base, fg = rose_pine.text },

	permissions_t_fg = rose_pine.pine,
	permissions_r_fg = rose_pine.gold,
	permissions_w_fg = rose_pine.love,
	permissions_x_fg = rose_pine.foam,
	permissions_s_fg = rose_pine.iris,

	selected = { icon = "󰻭", fg = rose_pine.gold },
	copied = { icon = "", fg = rose_pine.pine },
	cut = { icon = "", fg = rose_pine.love },

	total = { icon = "", fg = rose_pine.gold },
	succ = { icon = "", fg = rose_pine.pine },
	fail = { icon = "", fg = rose_pine.love },
	found = { icon = "", fg = rose_pine.foam },
	processed = { icon = "", fg = rose_pine.pine },

	tab_width = 20,
	tab_use_inverse = true,

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "githead" },
			},
			section_c = {},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "tab_path" },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "task_workload" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "task_states" },
			},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_name" },
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})

require("yatline-githead"):setup({
	show_branch = true,
	branch_prefix = "",
	branch_symbol = "",
	branch_borders = "",

	commit_symbol = " ",

	show_behind_ahead = true,
	behind_symbol = " ",
	ahead_symbol = " ",

	show_stashes = true,
	stashes_symbol = " ",

	show_state = true,
	show_state_prefix = true,
	state_symbol = "󱅉",

	show_staged = true,
	staged_symbol = " ",

	show_unstaged = true,
	unstaged_symbol = " ",

	show_untracked = true,
	untracked_symbol = " ",

	prefix_color = rose_pine.rose,
	branch_color = rose_pine.rose,
	commit_color = rose_pine.iris,
	stashes_color = rose_pine.pine,
	state_color = rose_pine.iris,
	staged_color = rose_pine.pine,
	unstaged_color = rose_pine.gold,
	untracked_color = rose_pine.rose,
	ahead_color = rose_pine.pine,
	behind_color = rose_pine.gold,
})

require("git"):setup()
