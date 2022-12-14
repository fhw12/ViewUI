return function(var, lib, t, i)
	if t[i].bc ~= nil then
		love.graphics.setColor(t[i].bc)
	end

	local r = var.height/2
	if var.height > var.width then r = var.width/2 end
	if t[i].padding then r = r - t[i].padding end

	if math.pow(math.abs(var.x+var.width/2 - lib.events.mx), 2) + math.pow(math.abs(var.y+var.height/2 - lib.events.my), 2) <= r * r then
		if t[i].bc_hover then
			love.graphics.setColor(t[i].bc_hover)
		end

		if t[i].click and lib.events.click then
			t[i].click(t[i])
		end
	end

	love.graphics.circle('fill', var.x+var.width/2, var.y+var.height/2, r)

	if t[i].content then
		lib.render(t[i].content, var.x, var.y, var.width, var.height)
	end

	return var
end