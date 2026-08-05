data modify storage catalog:index value \
  append value {id: "enchantment/punch", linked: ["keyword/enchantable/bow"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:punch"
