data modify storage catalog:index value \
  append value {id: "enchantment/depth_strider"}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:enchantments"."minecraft:depth_strider"
