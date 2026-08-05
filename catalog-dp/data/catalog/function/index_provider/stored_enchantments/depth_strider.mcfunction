data modify storage catalog:index value \
  append value {id: "enchantment/depth_strider", linked: ["keyword/enchantable/foot_armor"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:stored_enchantments"."minecraft:depth_strider"
