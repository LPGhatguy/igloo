local None = require(script.Parent.None)

local Dictionary = {}

function Dictionary.join(...)
	local new = {}

	for i = 1, select("#", ...) do
		local source = select(i, ...)

		for key, value in pairs(source) do
			if value == None then
				new[key] = nil
			else
				new[key] = value
			end
		end
	end

	return new
end

return Dictionary