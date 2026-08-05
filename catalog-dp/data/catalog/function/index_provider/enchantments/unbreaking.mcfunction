data modify storage catalog:index value \
  append value {id: "enchantment/unbreaking"}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:enchantments"."minecraft:unbreaking"

# armor special case
execute if items entity @s contents #enchantable/armor \
  run data modify storage catalog:index value[-1].id \
  set value "enchantment/unbreaking/armor"
