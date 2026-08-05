# @s: 5d6855d2-0-0-0-2 (inspecting item holder)

function #catalog:describe/generic

execute if items entity @s contents *[enchantments~[{levels: {min: 1}}]] \
  unless data storage catalog:inspecting_item value.components."minecraft:tooltip_display"{hidden_components: ["minecraft:enchantments"]} \
  run function #catalog:describe/enchantments
execute if items entity @s contents *[stored_enchantments~[{levels: {min: 1}}], !enchantments | !enchantments~[{levels: {min: 1}}]] \
  unless data storage catalog:inspecting_item value.components."minecraft:tooltip_display"{hidden_components: ["minecraft:stored_enchantments"]} \
  run function #catalog:describe/stored_enchantments
execute if items entity @s contents *[potion_contents] \
  unless data storage catalog:inspecting_item value.components."minecraft:tooltip_display"{hidden_components: ["minecraft:potion_contents"]} \
  run function #catalog:describe/potion_contents
