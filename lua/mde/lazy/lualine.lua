return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
        },
    config = function()
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'palenight',
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	sections = {
		lualine_a = {'mode'},
		--lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_b = {'filename'},
		lualine_c = {'encoding', 'fileformat', 'filetype'},
		lualine_d = {'progress'},
		lualine_z = {'location'},
	},
	inactive_sections = {
		lualine_z = {'location'},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {}
}

    end
}
