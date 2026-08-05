data modify storage catalog:index value \
  append value {id: "enchantment/piercing", linked: ["keyword/piercing_level"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:enchantments"."minecraft:piercing"
