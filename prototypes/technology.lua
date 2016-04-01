-- Filename: technology.lua
-- File location: NuclearPower\prototypes\

data:extend(
{
	{
	type = "technology",
	name = "nuclear-power",
	icon = "__NuclearPower__/graphics/technology/uranium-processing.png",
	prerequisites = {"sulfur-processing"}, -- Unsure about this. When should it actually be availible?
	unit =
	{ -- Should change costs when we get to balancing.
		count = 60,
		ingredients = {
			{"science-pack-1", 1},
			{"science-pack-2", 1},
		},
		time = 30
	},
	order = "d-c", -- Unsure about this. Will have to try the ordering in-game.
	effects = 
	{
		{
		type = "unlock-recipe",
		recipe = "processed-uranium"
		},
		{
		type = "unlock-recipe",
		recipe = "uranium-refinery"
		},
		{
		type = "unlock-recipe",
		recipe = "nuclear-power-plant"
		}
	}
	}
})