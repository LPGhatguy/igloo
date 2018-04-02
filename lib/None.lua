local None = newproxy(true)

getmetatable(None).__tostring = function()
	return "Immute.None"
end

return None