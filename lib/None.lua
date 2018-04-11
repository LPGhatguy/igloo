--[[
	Represents a value that is intentionally present, but should be interpreted
	as `nil`.

	Igloo.None is used by included utilities to make removing values more
	ergonomic.
]]

local None = newproxy(true)

getmetatable(None).__tostring = function()
	return "Igloo.None"
end

return None