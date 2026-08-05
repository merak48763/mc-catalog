# take item sound
scoreboard players set #sound catalog.var 2

# delete baked book
data modify storage catalog:zzz macro.baked_book.id \
  set from storage catalog:zzz book.item.components."minecraft:custom_data"."catalog/book".baked_book_id
function catalog:baked_books/delete with storage catalog:zzz macro.baked_book

# reset book item
# (shadow in storage is discarded)
item modify entity @s contents catalog:empty_book
