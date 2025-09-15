--location

local skipTicks = 10; -- amount of ticks skiped between entries



log("### recording flight data ###")

local timer = 0;
script.logUi = false

log("#f_log lat lon")
return function()

	if timer > scipTicks then
		log( "#f_log " .. location.latitude .. " " .. location.longitude)
		timer = 0
	else
		timer = timer + 1
	end
end
