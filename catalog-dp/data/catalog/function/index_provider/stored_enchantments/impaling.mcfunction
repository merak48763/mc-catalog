data modify storage catalog:index value \
  append value {id: "enchantment/impaling", linked: ["keyword/enchantable/trident"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:impaling"
