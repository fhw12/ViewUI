return function(var, lib, t, i)
	if t[i].bc ~= nil then
		love.graphics.setColor(t[i].bc)
	end

	local r = var.height/2
	if var.height > var.width then r = var.width/2 end

	love.graphics.circle('fill', var.x+var.width/2, var.y+var.height/2, r)

	if t[i].content then
		lib.render(t[i].content, var.x, var.y, var.width, var.height)
	end

	return var
end