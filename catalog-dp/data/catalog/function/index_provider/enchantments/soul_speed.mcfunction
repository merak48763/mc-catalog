data modify storage catalog:index value \
  append value {id: "enchantment/soul_speed"}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:enchantments"."minecraft:soul_speed"
