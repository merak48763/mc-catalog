# bundle was empty
# -> should have at most one item
  # empty
  execute if items entity @s contents *[bundle_contents~{items: {size: 0}}] \
    run return fail
  # 2+ items
  execute if items entity @s contents *[bundle_contents~{items: {size: {min: 2}}}] \
    run return run function catalog:modify_book/update_empty_book/too_many_items

# put item sound
scoreboard players set #sound catalog.var 1

# load data
# book item is shadowed to command storage
function catalog:modify_book/book_data/read

# collect page index
data modify storage catalog:index value set value []
execute as 5d6855d2-0-0-0-2 run function catalog:collect_index/main

# clear lore
data modify storage catalog:zzz book.item.components."minecraft:lore" set value []

# generate item name for lore
data modify storage catalog:zzz io.get_item_name.in \
  set from storage catalog:zzz book.item.components."minecraft:bundle_contents"[0]
execute as 5d6855d2-0-0-0-2 run function catalog:util/get_item_name
data modify storage catalog:zzz book.item.components."minecraft:lore" \
  append from storage catalog:zzz io.get_item_name.out

# static header lore
data modify storage catalog:zzz book.item.components."minecraft:lore" \
  append value { \
    translate: "catalog.book.active.2", fallback: "Scroll on this item to see keywords,", \
    color: "white", italic: false, \
    with: [{ \
      translate: "catalog.fmt.keybind", fallback: "[%s]", \
      with: [{keybind: "key.use", color: "yellow"}] \
    }] \
  }
data modify storage catalog:zzz book.item.components."minecraft:lore" \
  append value { \
    translate: "catalog.book.active.3", fallback: "then use %s to read one.", \
    color: "white", italic: false, \
    with: [{ \
      translate: "catalog.fmt.keybind", fallback: "[%s]", \
      with: [{keybind: "key.use", color: "yellow"}] \
    }] \
  }

# bake pages
data modify storage catalog:zzz io.bake_book.in \
  set from storage catalog:index value
function catalog:util/bake_book
data modify storage catalog:zzz book.baked_contents \
  set from storage catalog:zzz io.bake_book.out

# assign baked book ID
execute store result storage catalog:zzz book.item.components."minecraft:custom_data"."catalog/book".baked_book_id int 1 \
  run scoreboard players get #next_ptr catalog.var
scoreboard players add #next_ptr catalog.var 1

# set book state
data modify storage catalog:zzz book.item.components."minecraft:custom_data"."catalog/book".state set value "inspecting"

# save data
function catalog:modify_book/book_data/write
