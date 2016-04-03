-- Filename: items.lua
-- File location: NuclearPower\prototypes

data:extend(
{
    {
        type = "item",
        name = "uranium",
        icon = "__NuclearPower__/graphics/icons/uranium.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "z[uranium]",
        stack_size = 200
    },
  --  {
  --      type = "item",
  --      name = "processed-uranium",
  --      icon = "__NuclearPower__/graphics/icons/uranium-barrel.png",
  --      flags = {"goes-to-main-inventory"},
  --      subgroup = "intermediate-product",
  --      order = "z[uranium-barrel]",
  --      stack_size = 50
  --},
  {
        type = "item",
        name = "uranium-refinery",
        icon = "__NuclearPower__/graphics/icons/uranium-refinery.png",
        flags = {"goes-to-quickbar"},
		--group = "production", Don't think this is necessary
		subgroup = "production-machine",
		order = "b[steam-power]-b[uranium-refinery]",
        place_result = "uranium-refinery",
        stack_size = 5
  },
  {
        type = "item",
        name = "nuclear-power-plant",
        icon = "__NuclearPower__/graphics/icons/nuclear-power-plant.png",
        flags = {"goes-to-quickbar"},
        --group = "production", Don't think this is necessary
		subgroup = "production-machine",
		order = "b[steam-power]-b[nuclear-power-plant]",
        place_result = "nuclear-power-plant",
        stack_size = 2
  },
  {
    type = "item",
	name = "access-port",
    icon = "__base__/graphics/icons/steel-chest.png",
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[items]-c[steel-chest]",
    stack_size = 50,
    place_result = "access-port",
  }
})