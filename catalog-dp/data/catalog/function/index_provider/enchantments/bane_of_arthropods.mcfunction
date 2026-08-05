data modify storage catalog:index value \
  append value {id: "enchantment/bane_of_arthropods", linked: [{id: "effect/slowness", context: 3}]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:enchantments"."minecraft:bane_of_arthropods"
