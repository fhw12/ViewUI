function love.load()
	app = require("examples/calc")
	ui = require("UI/view")
	scale = love.window.getDPIScale()
end

function love.update()
	width, height = love.window.getMode()
end

function love.draw()
	ui.events_handler()
	ui.render(app.view, 0, 0, width/scale, height/scale)
end
