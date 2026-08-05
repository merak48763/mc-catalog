# shadow of the book item
data modify storage catalog:zzz book.item set from entity @s item

# expose inspecting item
loot replace entity 5d6855d2-0-0-0-2 contents loot catalog:zzz/get_first_content
data modify storage catalog:inspecting_item value \
  set from storage catalog:zzz book.item.components."minecraft:bundle_contents"[0]

# load baked book
execute unless items entity @s contents *[custom_data~{"catalog/book": {state: "inspecting"}}] run return 1
data modify storage catalog:zzz macro.baked_book.id \
  set from storage catalog:zzz book.item.components."minecraft:custom_data"."catalog/book".baked_book_id
function catalog:baked_books/read with storage catalog:zzz macro.baked_book
