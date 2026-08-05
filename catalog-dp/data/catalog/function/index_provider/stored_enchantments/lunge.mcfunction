data modify storage catalog:index value \
  append value {id: "enchantment/lunge", linked: ["keyword/enchantable/lunge"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:lunge"
