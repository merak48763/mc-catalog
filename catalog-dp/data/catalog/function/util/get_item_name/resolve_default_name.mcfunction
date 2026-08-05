# at util chunk (loaded)

# item entity selector trick
summon item ~ ~ ~ {Item: {id: "stone"}, Tags: ["catalog.temp"]}
execute as @e[tag=catalog.temp, type=item, distance=...1, limit=1] \
  run function catalog:util/get_item_name/resolve_default_name/as_item

# strip extra information
data remove storage catalog:zzz temp.get_item_name.text_component.hover_event
data remove storage catalog:zzz temp.get_item_name.text_component.insertion

# copy name
data modify storage catalog:zzz io.get_item_name.out.with[0].with[0] \
  set from storage catalog:zzz temp.get_item_name.text_component
