data modify storage catalog:index value \
  append value {id: "enchantment/bane_of_arthropods", linked: [{id: "effect/slowness", context: 3}, "keyword/enchantable/weapon"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:bane_of_arthropods"
