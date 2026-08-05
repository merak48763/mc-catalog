# fill bundle contents
  # backup inspecting item
  data modify storage catalog:zzz stack \
    append from storage catalog:zzz book.item.components."minecraft:bundle_contents"[0]
  # clear contents
  data modify storage catalog:zzz book.item.components."minecraft:bundle_contents" set value []
  # put inspecting item
  data modify storage catalog:zzz book.item.components."minecraft:bundle_contents" \
    append from storage catalog:zzz stack[-1]
  data remove storage catalog:zzz stack[-1]
  # put buttons
  data modify storage catalog:zzz book.item.components."minecraft:bundle_contents" \
    append from storage catalog:zzz book.baked_contents.active_tab[].button

# generate book item
data modify entity @s item set from storage catalog:zzz book.item

# save baked book
execute unless items entity @s contents *[custom_data~{"catalog/book": {state: "inspecting"}}] run return 1
data modify storage catalog:zzz macro.baked_book.id \
  set from storage catalog:zzz book.item.components."minecraft:custom_data"."catalog/book".baked_book_id
function catalog:baked_books/write with storage catalog:zzz macro.baked_book
