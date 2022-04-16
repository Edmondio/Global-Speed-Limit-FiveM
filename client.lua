Citizen.CreateThread( function()

	while true do 

	
		local maxspeed = GetVehicleMaxSpeed(vehicleModel)
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		local currentcarspeed = GetEntitySpeed(vehicle)
		local mph = 3.6
		local class = GetVehicleClass(vehicle)
		local vehicleModel = GetEntityModel(vehicle)

		
		if class ~= 16 then
			-- print(class)

			if math.floor(currentcarspeed*mph) == 230 then      -----<<<<< Change to whatever u want
				setspeed = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false))
				SetVehicleMaxSpeed(GetVehiclePedIsIn(PlayerPedId(), false), setspeed)
			end
	
		else

			SetVehicleMaxSpeed(GetVehiclePedIsIn(PlayerPedId(), false), maxspeed)
		end

		Citizen.Wait(0)  
		 
	end

end)