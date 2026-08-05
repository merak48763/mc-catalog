# @s: 5d6855d2-0-0-0-2 (inspecting item holder)
# in: item stack
# out: wrapped item name text component

# base text
data modify storage catalog:zzz io.get_item_name.out \
  set value { \
    translate: "catalog.book.active.1", fallback: "Item: [%s]", \
    color: "white", italic: false, \
    with: [{translate: "catalog.fmt.wrap", fallback: "%s", with: [""]}] \
  }

# rarity
function catalog:util/get_item_name/rarity_style

# has custom name
execute if items entity @s contents *[custom_name] \
  run return run function catalog:util/get_item_name/from_custom_name

# hardcoded special cases
  # lodestone compass
  execute if items entity @s contents compass[lodestone_tracker] \
    run return run data modify storage catalog:zzz io.get_item_name.out.with[0].with[0] \
    set value {translate: "item.minecraft.lodestone_compass"}
  # banner shield
  execute if items entity @s contents shield[base_color] \
    run return run function catalog:util/get_item_name/from_base_color
  # potion
  execute if items entity @s contents #catalog:potion_like[potion_contents] \
    at @s \
    run return run function catalog:util/get_item_name/resolve_default_name
  # non-empty book title
  execute if items entity @s contents written_book[written_book_content, !written_book_content~{title: ""}] \
    run return run data modify storage catalog:zzz io.get_item_name.out.with[0].with[0] \
    set from storage catalog:zzz io.get_item_name.in.components."minecraft:written_book_content".title.raw
  # player head
  execute if items entity @s contents player_head \
    if data storage catalog:zzz io.get_item_name.in.components."minecraft:profile".name \
    run return run function catalog:util/get_item_name/from_profile

# unnamed
execute if items entity @s contents *[!item_name] \
  run return run data modify storage catalog:zzz io.get_item_name.out.with[0].with[0] \
  set value {translate: "catalog.book.unnamed_item", fallback: "Unnamed Item", color: "gray", italic: true}

# non-default item name
execute if data storage catalog:zzz io.get_item_name.in.components."minecraft:item_name" \
  run return run data modify storage catalog:zzz io.get_item_name.out.with[0].with[0] \
  set from storage catalog:zzz io.get_item_name.in.components."minecraft:item_name"

# default item name
execute at @s run function catalog:util/get_item_name/resolve_default_name
