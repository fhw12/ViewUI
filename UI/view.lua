local lib = {}

lib.ui = {}
lib.ui.row = require('UI/row')
lib.ui.column = require('UI/column')
lib.ui.circle = require('UI/circle')

function lib.render(t, x, y, width, height)
	for i = 1, #t do
		local var = {
			x = x,
			y = y,
			width = width,
			height = height,
		}

		var = lib.ui[t[i][1]](var, lib, t, i)

		x = var.x
		y = var.y
		width = var.width
		height = var.height
	end
end

return lib