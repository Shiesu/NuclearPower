-- Filename: resources.lua
-- File location: NuclearPower\prototypes

data:extend(
{
  {
    type = "noise-layer",
    name = "uranium"
  },
  {
    type = "autoplace-control",
    name = "uranium",
    richness = true,
    order = "b-f"
  },
  {
    type = "resource",
    name = "uranium",
    icon = "__NuclearPower__/graphics/icons/uranium.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
    minable =
    {
      hardness = 0.95,
      mining_particle = "uranium-particle",
      mining_time = 8,
      result = "uranium"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "uranium",
      sharpness = 1,
      richness_multiplier = 10000,
      richness_base = 10,
      size_control_multiplier = 0.01,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,
          noise_layer = "uranium",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.3,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.55,
          noise_layer = "uranium",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {105, 90, 75, 60, 45, 30, 15, 1},
    stages =
    {
      sheet =
      {
        filename = "__NuclearPower__/graphics/entity/uranium.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.23, g=0.47, b=0}
  }
})