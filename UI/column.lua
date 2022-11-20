return function(var, lib, t, i)
	if t[i].bc ~= nil then
		love.graphics.setColor(t[i].bc)
	end

	love.graphics.rectangle('fill', var.x, var.y, var.width*t[i].size, var.height)

	if t[i].content then
		lib.render(t[i].content, var.x, var.y, var.width*t[i].size, var.height)
	end

	var.x = var.x + var.width * t[i].size

	return var
end