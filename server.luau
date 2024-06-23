--!strict
local Lynx = require("lynx/src/lynx")

local app = Lynx.new()
app:get("/", function(c)
	return c:html("Hello from Luau")
end)

app:serve(3000)
