# new tab
execute if score #tab_loop catalog.var matches 0 \
  run data modify storage catalog:zzz io.bake_book.out.hidden_tabs append value []

# bake a page
data modify storage catalog:zzz io.bake_page.in \
  set from storage catalog:zzz io.bake_book.in[0]
function catalog:util/bake_page
data modify storage catalog:zzz io.bake_book.out.hidden_tabs[-1] \
  append from storage catalog:zzz io.bake_page.out

# increase loop counter
scoreboard players add #tab_loop catalog.var 1

# next tab button on overflow
execute if score #tab_loop catalog.var matches 10 \
  if score #keyword_count catalog.var matches 12.. \
  run function catalog:util/bake_book/next_tab_button

# reset loop counter
# -> write to next tab
execute if score #tab_loop catalog.var matches 10 \
  if score #keyword_count catalog.var matches 12.. \
  run scoreboard players set #tab_loop catalog.var 0

# remove current index
data remove storage catalog:zzz io.bake_book.in[0]

# loop if there is remaining index
execute if data storage catalog:zzz io.bake_book.in[0] \
  run return run function catalog:util/bake_book/loop
# no more index
# -> add next tab button if needed
  # conditions:
  # 1. not placing the button in an empty new tab
  # 2. has multiple tabs <-> keyword count ≥ 12
  execute if score #tab_loop catalog.var matches 1.. \
    if score #keyword_count catalog.var matches 12.. \
    run function catalog:util/bake_book/next_tab_button
