function catalog:index_provider/generic/item_id_related

# static description in custom data
execute if data storage catalog:inspecting_item value.components."minecraft:custom_data"."catalog/static_index"[0] \
  run data modify storage catalog:index value \
  append from storage catalog:inspecting_item value.components."minecraft:custom_data"."catalog/static_index"[]

execute if items entity @s contents *[ominous_bottle_amplifier] \
  unless data storage catalog:inspecting_item value.components."minecraft:tooltip_display"{hidden_components: ["minecraft:ominous_bottle_amplifier"]} \
  run function catalog:index_provider/generic/ominous_bottle
