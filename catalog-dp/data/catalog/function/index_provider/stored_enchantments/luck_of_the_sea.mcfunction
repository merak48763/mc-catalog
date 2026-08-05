data modify storage catalog:index value \
  append value {id: "enchantment/luck_of_the_sea", linked: ["keyword/enchantable/fishing"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:luck_of_the_sea"
