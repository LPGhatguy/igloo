return function()
	local Dictionary = require(script.Parent.Dictionary)

	describe("join", function()
		it("should return a new table", function()
			local a = {}

			expect(Dictionary.join(a)).never.to.equal(a)
		end)
	end)
end