data:extend({
	{
		type = "assembling-machine",
        name = "uranium-refinery",
        icon = "__NuclearPower__/graphics/icons/uranium-refinery.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "uranium-refinery"},
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		module_specification =
		{
		  module_slots = 4 -- Should maybe be 0?
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		animation =
		{
		  north =
		  {
			filename = "__NuclearPower__/graphics/entity/uranium-refinery.png",
			width = 337,
			height = 255,
			frame_count = 1,
			shift = {2.515625, 0.484375}
		  },
		  east =
		  {
			filename = "__NuclearPower__/graphics/entity/uranium-refinery.png",
			x = 337,
			width = 337,
			height = 255,
			frame_count = 1,
			shift = {2.515625, 0.484375}
		  },
		  south =
		  {
			filename = "__NuclearPower__/graphics/entity/uranium-refinery.png",
			x = 674,
			width = 337,
			height = 255,
			frame_count = 1,
			shift = {2.515625, 0.484375}
		  },
		  west =
		  {
			filename = "__NuclearPower__/graphics/entity/uranium-refinery.png",
			x = 1011,
			width = 337,
			height = 255,
			frame_count = 1,
			shift = {2.515625, 0.484375}
		  }
		},

		working_visualisations =
		{
		  {
			north_position = {1.03125, -1.55},
			east_position = {-1.65625, -1.3},
			south_position = {-1.875, -2.0},
			west_position = {1.8437, -1.2},
			animation =
			{
			  filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
			  frame_count = 29,
			  width = 16,
			  height = 35,
			  scale = 1.5,
			  shift = {0, -0.5625},
			  run_mode="backward"
			},
			light = {intensity = 0.4, size = 6}
		  }
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
		  sound = { filename = "__base__/sound/oil-refinery.ogg" },
		  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		  apparent_volume = 2.5,
		},
		crafting_speed = 1,
		energy_source =
		{
		  type = "electric",
		  usage_priority = "secondary-input",
		  emissions = 0
		},
		energy_usage = "120kW",
		ingredient_count = 4, -- Could change this to 1?
		crafting_categories = {"uranium-chemistry"},
		
	},
	
	-- Nuclear Power Plant
	{
		type = "boiler",
		name="nuclear-power-plant"
		icon = "__NuclearPower__/graphics/icons/nuclear-power-plant.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "nuclear-power-plant"},
		max_health = 500,
		corpse = "small-remnants",
		resistances =
		{
		  {
			type = "fire",
			percent = 80
		  }
		},
		energy_consumption = "25MW",
		burner =
		{
		  effectivity = 1,
		  fuel_inventory_size = 1,
		  emissions = 0
		},
		working_sound =
		{
		  sound =
		  {
			filename = "__base__/sound/boiler.ogg",
			volume = 0.8
		  },
		  max_sounds_per_type = 3
		},
		structure =
		{
		  left =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160,
			shift = {0.72, -0.308}
		  },
		  down =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160, 
			shift = {0.72, -0.308}
		  },
		  left_down =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160, 
			shift = {0.72, -0.308}
		  },
		  right_down =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160,
			shift = {0.72, -0.308}
		  },
		  left_up =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160, 
			shift = {0.72, -0.308}
		  },
		  right_up =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160, 
			shift = {0.72, -0.308}
		  },
		  t_down =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160, 
			shift = {0.72, -0.308}
		  },
		  t_up =
		  {
			filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
			priority = "extra-high",
			width = 180,
			height = 160, 
			shift = {0.72, -0.308}
		  }
		},
		burning_cooldown = 20,
		pictures = pipepictures(),
		collision_box = {{-1.30,-1.30},{1.30,1.30}},
		selection_box = {{-1.50,-1.50},{1.50,1.50}},
		fluid_box =
		{	
			 base_area = 3,
			 pipe_connections =
			{
				{position= {0, 2}},
				{position= {0, -2}},
				{position= {2, 0}},
				{position= {-2, 0}}
			}
		}
	},
  -- Uranium (Mining) Particles
  {
    type = "particle",
    name = "uranium-particle",
    flags = {"not-on-map"},
    life_time = 180,
    pictures =
    {
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-2.png",
        priority = "extra-high",
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-3.png",
        priority = "extra-high",
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-4.png",
        priority = "extra-high",
        width = 9,
        height = 8,
        frame_count = 1
      }
    },
    shadows =
    {
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-shadow-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-shadow-2.png",
        priority = "extra-high",
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-shadow-3.png",
        priority = "extra-high",
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__NuclearPower__/graphics/entity/uranium-particle/uranium-particle-shadow-4.png",
        priority = "extra-high",
        width = 9,
        height = 8,
        frame_count = 1
      }
    }
  }
})