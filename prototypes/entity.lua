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
     type = "generator",
     name = "nuclear-power-plant",
     icon = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
     flags = {"placeable-neutral","player-creation"},
     minable = {mining_time = 1, result = "nuclear-power-plant"},
     max_health = 600,
     corpse = "big-remnants",
 	dying_explosion = "big-explosion",
     effectivity = 4,
     fluid_usage_per_tick = 0.9,
     resistances = 
     {
       {
         type = "fire",
         percent = 70
       }
     },
     fast_replaceable_group =  "steam-engine",
     collision_box = {{-0.7, -0.6}, {0.7, 0.6}},
     selection_box = {{-1.5, -1}, {1.5, 1}},
     selectable_in_game = true,
     fluid_box =
     {
       base_area = 0.1,
       pipe_connections =
       {
        -- { position = {0, 0.8} }
       },
     },
     energy_source =
     {
       type = "electric",
       usage_priority = "secondary-output"
     },
     horizontal_animation =
     {
       filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
       width = 156,
       height = 141,
       frame_count = 1,
       line_length = 8,
       shift = {1.34, -0.06}
     },
     vertical_animation =
     {
       filename = "__NuclearPower__/graphics/entity/nuclear-power-plant.png",
       width = 156,
       height = 141,
       frame_count = 1,
       line_length = 8,
       shift = {0.812, 0.031}
     },
     smoke =
     {
       {
         name = "smoke",
         north_position = {0, -1.3},
         east_position = {0, -1.3},
         deviation = {0, 0},
         frequency = 0.001,
         starting_vertical_speed = 0
       }
     },
     working_sound =
     {
       sound =
       {
         filename = "__base__/sound/steam-engine-90bpm.ogg",
         volume = 0.1
       },
       match_speed_to_activity = true,
     },
     min_perceived_performance = 0.25,
     performance_to_sound_speedup = 0.5
   },
	
	-- Access port
	{
    type = "container",
	name = "access-port",
    icon = "__base__/graphics/icons/steel-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    max_health = 200,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    minable = {hardness = 0.2, mining_time = 1},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture =
    {
      filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
      priority = "extra-high",
      width = 48,
      height = 34,
      shift = {0.2, 0}
    },
    inventory_size = 1
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