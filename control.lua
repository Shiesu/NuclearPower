require "defines"
require "util"

script.on_event(defines.events.on_tick, function(event)
		check_generators()
end)

script.on_event(defines.events.on_built_entity, function(event)

	if event.created_entity.name == "nuclear-power-plant" then	
		if global.nuclear_power_plant == nil then global.nuclear_power_plant = {} end
			local nuclear_power_plant = event.created_entity
					table.insert(global.nuclear_power_plant, nuclear_power_plant)
					nuclear_power_plant.fluidbox[1] = {type="liquid-uranium", amount=100, temperature=200}
	end
end)


script.on_event(defines.events.on_robot_built_entity, function(event)

	if event.created_entity.name == "nuclear-power-plant" then	
		if global.nuclear_power_plant == nil then global.nuclear_power_plant = {} end
			local nuclear_power_plant = event.created_entity
					table.insert(global.nuclear_power_plant, nuclear_power_plant)
					nuclear_power_plant.fluidbox[1] = {type="liquid-uranium", amount=100, temperature=200}
	end
end)


function check_generators()
   if global.nuclear_power_plant ~= nil then

  	    for k,gen in pairs(global.nuclear_power_plant) do
      		if k % 125 == game.tick % 125 then

				if gen.valid then
        			if gen.fluidbox[1] ~= nil then 

         					local pot = gen.fluidbox[1]
							pot["amount"] = 10				
							pot["temperature"] = 200
							gen.fluidbox[1] = pot
							
					else table.remove(global.nuclear_power_plant, k)

					end				
				end
			end
		end
	end
end