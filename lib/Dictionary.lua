--[[
	Defines utilities for working with 'dictionary-like' tables.

	Dictionaries can be indexed by any value, but don't have the ordering
	expectations that lists have.
]]

local None = require(script.Parent.None)

local Dictionary = {}

--[[
	Combine a number of dictionary-like tables into a new table.

	Keys specified in later tables will overwrite keys in previous tables.

	Use `Igloo.None` as a value to remove a value. This is necessary because
	Lua does not distinguish between a value not being present in a table and a
	value being `nil`.
]]
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