local rose_pine_palette = {
	base = "#191724",
	surface = "#1f1d2e",
	overlay = "#26233a",
	muted = "#6e6a86",
	subtle = "#908caa",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	leaf = "#95b1ac",
	highlight_low = "#21202e",
	highlight_med = "#403d52",
	highlight_high = "#524f67",
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
		fg = rose_pine_palette.base,
		bg_mode = {
			normal = rose_pine_palette.foam,
			select = rose_pine_palette.gold,
			un_set = rose_pine_palette.love,
		},
	},
	style_b = { bg = rose_pine_palette.surface, fg = rose_pine_palette.text },
	style_c = { bg = rose_pine_palette.base, fg = rose_pine_palette.text },

	permissions_t_fg = rose_pine_palette.pine,
	permissions_r_fg = rose_pine_palette.gold,
	permissions_w_fg = rose_pine_palette.love,
	permissions_x_fg = rose_pine_palette.foam,
	permissions_s_fg = rose_pine_palette.iris,

	selected = { icon = "󰻭", fg = rose_pine_palette.gold },
	copied = { icon = "", fg = rose_pine_palette.pine },
	cut = { icon = "", fg = rose_pine_palette.love },

	total = { icon = "", fg = rose_pine_palette.gold },
	succ = { icon = "", fg = rose_pine_palette.pine },
	fail = { icon = "", fg = rose_pine_palette.love },
	found = { icon = "", fg = rose_pine_palette.foam },
	processed = { icon = "", fg = rose_pine_palette.pine },

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

	prefix_color = rose_pine_palette.rose,
	branch_color = rose_pine_palette.rose,
	commit_color = rose_pine_palette.iris,
	stashes_color = rose_pine_palette.pine,
	state_color = rose_pine_palette.iris,
	staged_color = rose_pine_palette.pine,
	unstaged_color = rose_pine_palette.gold,
	untracked_color = rose_pine_palette.rose,
	ahead_color = rose_pine_palette.pine,
	behind_color = rose_pine_palette.gold,
})

require("git"):setup()
