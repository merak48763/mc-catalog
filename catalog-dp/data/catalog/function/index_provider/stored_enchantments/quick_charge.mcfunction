data modify storage catalog:index value \
  append value {id: "enchantment/quick_charge", linked: ["keyword/enchantable/crossbow"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:quick_charge"
