return function(var, lib, t, i)
	if t[i].bc ~= nil then
		love.graphics.setColor(t[i].bc)
	end

	if var.x < lib.events.mx and var.x + var.width > lib.events.mx and
		var.y < lib.events.my and var.y + var.height * t[i].size > lib.events.my then
			if t[i].click and lib.events.click then
				t[i].click(t[i])
			end
	end

	love.graphics.rectangle('fill', var.x, var.y, var.width, var.height*t[i].size)

	if t[i].content then
		lib.render(t[i].content, var.x, var.y, var.width, var.height*t[i].size)
	end

	var.y = var.y + var.height * t[i].size

	return var
end