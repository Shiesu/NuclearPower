-- Filename: recipes.lua
-- File location: NuclearPower\prototypes\

data:extend(
{
    {
		type = "recipe",
		name = "processed-uranium",
		category = "chemistry",
		energy_required = 1,
		enabled = true,
		ingredients =
		{
			{type="item", name="uranium", amount=2}
		},
		results=
		{
			{type="fluid", name="processed-uranium", amount=1}
		},
		subgroup = "fluid-recipes"
	},
    {
        type = "recipe",
        name = "uranium-refinery",
        energy_required = 1,
        enabled = "true",
        ingredients =
        {
          {"iron-plate", 2},
        },
        result = "uranium-refinery"
    },
    {
        type = "recipe",
        name = "nuclear-power-plant",
        energy_required = 1,
        enabled = "true",
        ingredients =
        {
          {"iron-plate", 2},
        },
        result = "nuclear-power-plant"
    },
	{
        type = "recipe",
        name = "access-port",
        energy_required = 1,
        enabled = "true",
        ingredients =
        {
          {"iron-plate", 2},
        },
        result = "access-port"
    }	
})