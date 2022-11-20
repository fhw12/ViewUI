return function(var, lib, t, i)
	if t[i].fg then
		love.graphics.setColor(t[i].fg)
	end

	love.graphics.print(t[i].text, math.ceil(var.x+var.width/2-lib.font:getWidth(t[i].text)/2), math.ceil(var.y+var.height/2-lib.font:getHeight(t[i].text)/2))
	
	return var
end