-- Filename: recipes.lua
-- File location: NuclearPower\prototypes\

data:extend(
{
    {
        type = "recipe",
        name = "processed-uranium",
		category="uranium-chemistry",
        energy_required = 15,
        enabled = "true",
        ingredients =
        {
          {"uranium", 2},
        },
        result = "processed-uranium"
    },
    {
        type = "recipe",
        name = "uranium-refinery",
        energy_required = 15,
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
        energy_required = 15,
        enabled = "true",
        ingredients =
        {
          {"iron-plate", 2},
        },
        result = "nuclear-power-plant"
    }  
})