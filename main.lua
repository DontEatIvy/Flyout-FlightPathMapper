--location
log("### recording flight data ###")

log("#f_log lat lon")

local lastRecord = 0
return function()

	--if not lastRecord == controls.Time then
		log( "#f_log " .. location.latitude .. " " .. location.longitude)
	--#end
end
