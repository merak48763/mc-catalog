# get index
execute store result score #page_num catalog.var \
  run data get entity 5d6855d2-0-0-0-3 item.components."minecraft:custom_data"."catalog/button".select_page.page_num

# index out of bound
# -> ignore glitched button
execute if score #page_num catalog.var >= #page_count catalog.var run return fail

# reset lore
  # backup top 3 lines (static lore)
  data modify storage catalog:zzz stack append value []
  data modify storage catalog:zzz stack[-1] \
    append from storage catalog:zzz book.item.components."minecraft:lore"[0]
  data modify storage catalog:zzz stack[-1] \
    append from storage catalog:zzz book.item.components."minecraft:lore"[1]
  data modify storage catalog:zzz stack[-1] \
    append from storage catalog:zzz book.item.components."minecraft:lore"[2]
  # clear lore
  data modify storage catalog:zzz book.item.components."minecraft:lore" set value []
  # restore top 3 lines
  data modify storage catalog:zzz book.item.components."minecraft:lore" \
    set from storage catalog:zzz stack[-1]
  data remove storage catalog:zzz stack[-1]

# append page contents
execute store result storage catalog:zzz macro.list_access.index int 1 \
  run scoreboard players get #page_num catalog.var
function catalog:modify_book/update_active_book/select_page/append_contents with storage catalog:zzz macro.list_access
