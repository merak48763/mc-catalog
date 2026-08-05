data modify storage catalog:index value \
  append value {id: "enchantment/sweeping_edge", linked: ["keyword/enchantable/sweeping"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:sweeping_edge"
