--location

log("### recording flight data ###")


script.logUi = false

log("#f_log lat lon")

return function()

	--if not lastRecord == controls.Time then
	log( "#f_log " .. location.latitude .. " " .. location.longitude)
	--#end
end
