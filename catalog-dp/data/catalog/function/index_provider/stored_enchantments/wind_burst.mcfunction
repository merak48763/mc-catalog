data modify storage catalog:index value \
  append value {id: "enchantment/wind_burst", linked: ["keyword/enchantable/mace"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:wind_burst"
