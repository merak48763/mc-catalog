data modify storage catalog:index value \
  append value {id: "enchantment/frost_walker"}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:enchantments"."minecraft:frost_walker"
