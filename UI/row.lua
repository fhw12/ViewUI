return function(var, lib, t, i)
	if t[i].bc ~= nil then
		love.graphics.setColor(t[i].bc)
	end

	love.graphics.rectangle('fill', var.x, var.y, var.width, var.height*t[i].size)

	if t[i].content then
		lib.render(t[i].content, var.x, var.y, var.width, var.height*t[i].size)
	end

	var.y = var.y + var.height * t[i].size

	return var
end