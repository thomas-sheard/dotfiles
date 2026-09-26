local p = require("temp.palette")

require('base16-colorscheme').setup({
	-- background
	base00 = p.background,

	-- line hl
	base01 = p.background_alt,

	base02 = p.green,

    -- comments
	base03 = p.foreground_muted,

	base04 = p.cyan,

	-- plain text
	base05 = p.foreground,

	base06 = p.cyan,
	base07 = p.cyan,

	-- macros
	base08 = p.blue,

	-- numbers
	base09 = p.orange,

    -- types, classes
	base0A = p.yellow,

    -- strings, text
	base0B = p.green,

    -- special
	base0C = p.cyan,

    -- functions, methods
	base0D = p.blue,

    -- keywords, operators
	base0E = p.purple,

    -- delimiters?
	base0F = p.green,
})
