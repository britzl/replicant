local M = {}

local WIDTH = tonumber(sys.get_config("display.width"))
local HEIGHT = tonumber(sys.get_config("display.height"))

function M.random_pos()
	return vmath.vector3(math.random(WIDTH), math.random(HEIGHT), 0)
end


return M