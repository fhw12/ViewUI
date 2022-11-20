local lib = {}

lib.font = love.graphics.newFont(25)
love.graphics.setFont(lib.font)

lib.ui = {}
lib.ui.row = require('UI/row')
lib.ui.column = require('UI/column')
lib.ui.circle = require('UI/circle')
lib.ui.text = require('UI/text')

lib.events = {
	mx = 0, my = 0, mouse_down = false, mouse_down_prev = false,
	click = false
}

function lib.events_handler()
	local mx, my = love.mouse.getPosition()
	lib.events.mx = mx
	lib.events.my = my

	lib.events.mouse_down_prev = lib.events.mouse_down
	lib.events.mouse_down = love.mouse.isDown(1)

	if lib.events.mouse_down_prev == false and lib.events.mouse_down then
		lib.events.click = true
	else
		lib.events.click = false
	end
end

function getWidgetbyID(t, id)
	local result_widget = ''
	for i = 1, #t do
		if t[i].id then
			if t[i].id == id then
				return t[i]
			end
		end

		if t[i].content then
			result_widget = getWidgetbyID(t[i].content, id)
			if result_widget ~= nil then return result_widget end
		end
	end
end

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