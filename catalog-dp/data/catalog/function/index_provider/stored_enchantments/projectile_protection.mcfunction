data modify storage catalog:index value \
  append value {id: "enchantment/projectile_protection", linked: ["keyword/enchantable/armor"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:projectile_protection"
